#!/bin/bash

CONTAINER_NAME=flask-app

docker stop $CONTAINER_NAME 2>/dev/null || true
docker rm $CONTAINER_NAME 2>/dev/null || true
