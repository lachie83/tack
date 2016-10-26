# This is merged in with terraform.tfvars for override/existing VPC purposes.  Only to be used in conjunction with modules_override.tf

# The existing VPC CIDR range, ensure that the the etcd, controller and worker IPs are in this range
cidr.vpc = "172.25.0.0/16"

# etcd server static IPs, ensure that they fall within the exisiting VPC public subnet range
etcd-ips = "172.25.128.10,172.25.144.10,172.25.160.10"

# Put your existing VPC info here:
vpc-existing {
	id = "vpc-cf0b12ab"
	gateway-id = "igw-1ac0727e"
	subnet-ids-public = "subnet-94f8a1e2,subnet-c43c3aa0,subnet-d4b5268c"
	subnet-ids-private = "subnet-97f8a1e1,subnet-c53c3aa1,subnet-d3b5268b"
}
