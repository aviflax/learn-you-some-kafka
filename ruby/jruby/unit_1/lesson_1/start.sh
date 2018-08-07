#!/bin/bash

set -ex

cp -p ../../../shared/* ../shared/* ./

docker-compose -p jruby_unit_1 build
docker-compose -p jruby_unit_1 run --rm lesson

# We leave the network up — i.e. we don’t run `docker-compose down` — because
# the subsequent lessons need it in its current state.
