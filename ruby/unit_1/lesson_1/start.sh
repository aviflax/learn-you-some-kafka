#!/bin/bash

set -ex

cp ../../lesson.rb ../Dockerfile ../Gemfile ./

docker-compose build
docker-compose run --rm lesson

# We leave the network up — i.e. not run
# `docker-compose down` — because some of the following
# lessons need it in its current state.
