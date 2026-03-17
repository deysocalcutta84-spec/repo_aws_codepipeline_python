#!/bin/bash
# Go to app directory
cd /home/ec2-user/myapp
# Install Python packages from requirements.txt
sudo pip3 install -r requirements.txt
echo "Python dependencies installed successfully"
