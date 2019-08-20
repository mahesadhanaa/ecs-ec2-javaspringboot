#!/bin/sh

# AWS Region that the ECS Cluster is in
ECS_REGION=''
# Name of the ECS Cluster
ECS_CLUSTER_NAME=''
# Name of the service on the ECS Cluster
ECS_SERVICE_NAME=''
# Name of the task definition used by the service
ECS_TASK_DEFINITION_NAME=''
# Name of the ECR
ECR_NAME=''
# URI of the ECR
ECR_URI=''
# Current timestamp, to use as a version tag.
VERSION=$(date +%s)
# Minimum targe AWS CLI version
AWSCLI_VER_TAR=1.11.91

# Build the Docker image from the Docker file.
docker build --pull -t "${ECR_NAME}:latest" -f Dockerfile .
# Tag the new Docker image to the remote repo, using the "latest-ENVIRONMENT" identifier 
docker tag "${ECR_NAME}:latest" "${ECR_URI}/${ECR_NAME}:latest-${VERSION}"
# Login to AWS ECR
$(aws ecr get-login --region "${ECS_REGION}")
# Push to the remote ECR repo (latest-ENVIRONMENT identifier)
docker push "${ECR_URI}/${ECR_NAME}:latest-${VERSION}"