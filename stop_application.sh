#!/bin/bash

CONTAINER_NAME=githubactionsdemo

docker stop $CONTAINER_NAME 2>/dev/null || true
docker rm $CONTAINER_NAME 2>/dev/null || true
