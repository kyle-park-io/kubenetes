#!/bin/bash

set -e

IMAGE_TAG=gcr.io/kyle-dev/ingress-go:0.0.1
docker buildx build --platform linux/amd64 --build-arg=PROGRAM_VER=$1 -t $IMAGE_TAG .
docker push $IMAGE_TAG

IMAGE_TAG_LATEST=gcr.io/kyle-dev/ingress-go:latest
docker tag $IMAGE_TAG $IMAGE_TAG_LATEST
docker push $IMAGE_TAG_LATEST

# git tag -a $1 -m "add tag for $1"
# git push origin main --tags
