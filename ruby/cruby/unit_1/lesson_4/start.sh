#!/bin/bash

set -ex

cp ../../../shared/* ../shared/* ./

ID=`docker build --quiet .`
docker run -it --rm --network cruby-unit-1 $ID

docker-compose down
