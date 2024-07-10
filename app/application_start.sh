#!/bin/bash
cd /home/ec2-user/Flask-App
source venv/bin/activate
gunicorn --bind 0.0.0.0:5000 app:app &
