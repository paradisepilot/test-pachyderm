#!/usr/bin/env bash

set -e

test -z "$1" && echo Need version number && exit 1

IMAGE="demo-pachyderm$1"

docker build . -t $IMAGE > stdout.docker.build 2> stderr.docker.build

# docker tag  $IMAGE paradisepilot/test-pachyderm:$IMAGE
# docker push        paradisepilot/test-pachyderm:$IMAGE

