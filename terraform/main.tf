module "security_group" {
  source = "./modules/security_group"
  name   = "hackathon-security-group"
}

module "ec2" {
  source          = "./modules/ec2"
  ami             = var.ami
  instance_type   = var.instance_type
  key_pair        = var.key_pair
  security_group  = module.security_group.security_group_id
  user_data       = file("./modules/ec2/scripts/install_docker_and_nginx.sh")
}
