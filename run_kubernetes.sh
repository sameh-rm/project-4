#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=urokai/udacity-cloud-devops-project-4
# Step 2
# Run the Docker Hub container with kubernetes
# kubectl run app --image=$dockerpath 
kubectl create deployment app --image=$dockerpath --port=8000
# Step 3:   
# List kubernetes deployments
kubectl get deployments
# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/app 8000:80
