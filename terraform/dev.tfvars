ami               = "ami-08f78cb3cc8a4578e"
instance_type     = "t3.micro"
key_pair          = "hackathon-key"
vpc_cidr            = "10.0.0.0/16"
public_subnets_cidr = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets_cidr = ["10.0.3.0/24", "10.0.4.0/24"]
availability_zones  = ["eu-west-2a", "eu-west-2b"]



