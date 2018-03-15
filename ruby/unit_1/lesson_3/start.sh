#!/bin/bash

set -ex

cp ../../lesson.rb ../../Dockerfile ./

ID=`docker build --quiet .`
docker run -it --rm --network ruby_default $ID

# We’ll again leave the network up — i.e. not run
# `docker-compose down` — because some more of the
# following lessons need it in its current state.
