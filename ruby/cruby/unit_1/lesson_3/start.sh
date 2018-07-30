#!/bin/bash

set -ex

cp ../../../shared/* ../shared/* ./

ID=`docker build --quiet .`
docker run -it --rm --network cruby-unit-1 $ID

# We’ll again leave the network up — i.e. not run
# `docker-compose down` — because some more of the
# following lessons need it in its current state.
