#!/bin/bash

set -ex

cp ../../../shared/* ../shared/* ./

docker-compose -p cruby_unit_2 build
docker-compose -p cruby_unit_2 run --rm lesson

# We’ll again leave the network up — i.e. not run
# `docker-compose down` — because some more of the
# following lessons need it in its current state.
