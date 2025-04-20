#!/bin/bash
# Update system
sudo dnf update -y

# Install Docker
sudo dnf install -y docker
sudo systemctl enable docker
sudo systemctl start docker

# Install Nginx
sudo dnf install -y nginx
sudo systemctl enable nginx
sudo systemctl start nginx

# Add ec2-user to docker group (Amazon Linux default user)
sudo usermod -aG docker ec2-user

# Verify installations
docker --version
nginx -v