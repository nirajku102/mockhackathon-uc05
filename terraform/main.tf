module "vpc" {
  source               = "./modules/vpc"
  vpc_cidr            = var.vpc_cidr
  public_subnets_cidr = var.public_subnets_cidr
  availability_zones  = var.availability_zones
}

module "security_group" {
  source = "./modules/security_group"
  name   = "hackathon-security-group"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source          = "./modules/ec2"
  ami             = var.ami
  instance_type   = var.instance_type
  key_pair        = var.key_pair
  security_group  = module.security_group.security_group_id
  subnet_id       = module.vpc.public_subnets[0]
  user_data       = base64encode(templatefile("${path.module}/user_data.sh", {}))
}