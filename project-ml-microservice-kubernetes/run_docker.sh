#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=predict .
docker tag predict gitauwairimu/ml-microservice:v1.0.1
# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run -p 8070:80 gitauwairimu/ml-microservice:v1.0.1