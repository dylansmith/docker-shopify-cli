#!/bin/sh
VERSION=$(cat version)
export DOCKER_DEFAULT_PLATFORM=linux/amd64
docker build -t dylansmith/shopify-cli:$VERSION --build-arg version=$VERSION $@ .
