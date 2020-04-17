#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

CONTAINER_NAME="house-prediction"
PORT=8888

# Step 1:
# Build image and add a descriptive tag
docker build -t ankitjain28/house-prediction:latest .
# Step 2: 
# List docker images
docker images

# Stopping and removing old container
docker stop $CONTAINER_NAME && docker rm $CONTAINER_NAME

# Step 3: 
# Run flask app
docker run --publish $PORT:80 --name $CONTAINER_NAME house-prediction:latest 