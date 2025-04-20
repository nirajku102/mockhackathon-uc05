variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
}

variable "key_pair" {
  description = "Key pair name for SSH access"
  type        = string
}

variable "security_group" {
  description = "Security group ID for the EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 instance"
  type        = string
}

variable "user_data" {
  description = "User data script to configure the instance"
  type        = string
  default     = ""
}