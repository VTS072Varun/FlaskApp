#!/bin/bash

# Update the package list
sudo yum update -y

# Install necessary packages
sudo yum install -y python3 python3-pip

# Create a virtual environment
python3 -m venv venv

# Activate the virtual environment
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt
