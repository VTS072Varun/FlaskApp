#!/bin/bash

# Stop and remove old container if running
docker stop githubactionsdemo || true
docker rm githubactionsdemo || true

# Pull the latest image
docker pull $DOCKER_USERNAME/githubactionsdemo:latest

# Run new container
docker run -d --name githubactionsdemo -p 8000:8000 $DOCKER_USERNAME/githubactionsdemo:latest
