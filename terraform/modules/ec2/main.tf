resource "aws_instance" "web" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_pair
  vpc_security_group_ids = [var.security_group]
  subnet_id              = var.subnet_id
  user_data              = var.user_data

  tags = {
    Name = "Terraform-EC2-Instance"
  }
}