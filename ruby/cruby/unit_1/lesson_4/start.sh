#!/bin/bash

set -ex

cp ../../../shared/* ../shared/* ./

RUNTIME=$(cd ../.. && echo ${PWD##*/})
UNIT=$(cd .. && echo ${PWD##*/})
PROJECT="${RUNTIME}_${UNIT}"

docker-compose -p $PROJECT build
docker-compose -p $PROJECT run --rm lesson
docker-compose -p $PROJECT down
