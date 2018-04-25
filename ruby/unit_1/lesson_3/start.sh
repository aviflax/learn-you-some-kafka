#!/bin/bash

set -ex

cp ../../lesson.rb ../Dockerfile ../Gemfile ./

ID=`docker build --quiet .`
docker run -it --rm --network lesson1_default $ID

# We’ll again leave the network up — i.e. not run
# `docker-compose down` — because some more of the
# following lessons need it in its current state.
