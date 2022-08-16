#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
#eksctl create cluster --name wairimu --region=us-east-1
#eksctl create cluster --name wairimu --region=us-east-1 --nodes=2
#sleep 12m 30s
# This is your Docker ID/path
dockerpath="gitauwairimu/predict:v1.0.1"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run predictApp\
    --image=$dockerpath\
    --port=80 --labels app=predictApp

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward predictApp 8000:80
