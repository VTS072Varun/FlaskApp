#!/bin/bash

# Stop and remove old container if running
docker stop githubactionsdemo || true
docker rm githubactionsdemo || true

# Pull the latest image
docker pull varuntej18/githubactionsdemo:latest

# Run new container on port 8000
docker run -d --name githubactionsdemo -p 8000:8000 varuntej18/githubactionsdemo:latest
