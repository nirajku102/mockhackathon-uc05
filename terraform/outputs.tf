output "ec2_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = module.ec2.public_ip
}

output "security_group_id" {
  description = "The ID of the security group"
  value       = module.security_group.security_group_id
}