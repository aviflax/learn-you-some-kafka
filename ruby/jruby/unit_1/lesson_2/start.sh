#!/bin/bash

set -ex

cp -p ../../../shared/* ../shared/* ./

RUNTIME=$(cd ../.. && echo ${PWD##*/})
UNIT=$(cd .. && echo ${PWD##*/})
PROJECT="${RUNTIME}_${UNIT}"

docker-compose -p $PROJECT build
docker-compose -p $PROJECT run --rm lesson

# We leave the network up — i.e. we don’t run `docker-compose down` — because
# the subsequent lessons need it in its current state.
