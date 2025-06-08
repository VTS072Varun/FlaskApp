#!/bin/bash

CONTAINER_NAME=flask-app
IMAGE_NAME=dockerhubusername/your-image-name:latest

# Stop existing container if running
docker stop $CONTAINER_NAME 2>/dev/null || true
docker rm $CONTAINER_NAME 2>/dev/null || true

# Pull new image
docker pull $IMAGE_NAME

# Run container
docker run -d \
  --name $CONTAINER_NAME \
  -p 8000:8000 \
  $IMAGE_NAME
