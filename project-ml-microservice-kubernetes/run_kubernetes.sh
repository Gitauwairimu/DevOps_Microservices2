#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub
#eksctl create cluster --name wairimu --region=us-east-1
#eksctl create cluster --name wairimu --region=us-east-1 --nodes=2
#sleep 12m 30s
# This is your Docker ID/path
dockerpath="gitauwairimu/ml-microservice:v1.0.1"

# Step 2
# Run the Docker Hub container with kubernetes

# kubectl run douh\
#     --image=$dockerpath\
#     --port=80 --labels app=ml-predictApp

kubectl run douh --image=gitauwairimu/ml-microsrevice:v1.0.1 --port=80
# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward douh 8000:80
