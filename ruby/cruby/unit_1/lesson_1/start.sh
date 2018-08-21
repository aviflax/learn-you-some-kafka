#!/bin/bash

set -ex

cp ../../../shared/* ../shared/* ./

RUNTIME=$(cd ../.. && echo ${PWD##*/})
UNIT=$(cd .. && echo ${PWD##*/})
PROJECT="${RUNTIME}_${UNIT}"

docker-compose -p $PROJECT build
docker-compose -p $PROJECT run --rm lesson

# We leave the network up — i.e. not run
# `docker-compose down` — because some of the following
# lessons need it in its current state.
