#!/bin/bash

# Navigate to the working directory
cd /home/ec2-user/Flask-App

# Give permission for everything in the Flask-App directory
sudo chmod -R 777 /home/ec2-user/Flask-App

# Update package list and install necessary packages
sudo yum update -y
sudo yum install -y python3 python3-pip

# Create a virtual environment in the project directory
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Deactivate virtual environment
deactivate
