module "security_group" {
  source = "./modules/security_group"
}

module "ec2" {
  source          = "./modules/ec2"
  ami             = var.ami
  instance_type   = var.instance_type
  key_pair        = var.key_pair
  security_group  = module.security_group.security_group_id
  user_data       = file("./modules/ec2/scripts/install_docker.sh") # Or install_nginx.sh
}

output "ec2_public_ip" {
  value = module.ec2.public_ip
}