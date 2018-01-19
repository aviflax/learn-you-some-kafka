#!/bin/bash

set -e

TAG=`pwd | openssl md5`

# --quiet isn’t quite quiet enough
docker build --quiet -t $TAG . > /dev/null

docker run -it --rm $TAG
