#!/bin/bash

# Update package lists and install Nginx
sudo apt update
sudo apt install -y nginx
# Start and enable Nginx service
sudo systemctl start nginx
sudo systemctl enable nginx

echo "<h1>Welcome to Nginx Server.<hr><h2>Created by Terraform</h2></h1>" | sudo tee /var/www/html/index.html