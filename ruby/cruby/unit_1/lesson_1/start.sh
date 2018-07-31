#!/bin/bash

set -ex

cp ../../../shared/* ../shared/* ./

docker-compose -p cruby_unit_1 build
docker-compose -p cruby_unit_1 run --rm lesson

# We leave the network up — i.e. not run
# `docker-compose down` — because some of the following
# lessons need it in its current state.
