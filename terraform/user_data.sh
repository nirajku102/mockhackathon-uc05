#!/bin/bash
# Update the system
apt-get update -y

# Install Docker
apt-get install -y docker.io
systemctl start docker
systemctl enable docker

# Install Nginx
apt-get install -y nginx
systemctl start nginx
systemctl enable nginx

# Add current user to docker group
usermod -aG docker ubuntu