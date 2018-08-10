#!/bin/bash

set -ex

cp -p ../../../shared/* ../shared/* ./

RUNTIME=$(cd ../.. && echo ${PWD##*/})
UNIT=$(cd .. && echo ${PWD##*/})
PROJECT="${RUNTIME}_${UNIT}"

docker-compose -p $PROJECT build
docker-compose -p $PROJECT run --rm lesson

# Lesson 4 isn’t ready yet, so we could shut down the compose network. But I
# find that it’s not uncommon to want to run through the lesson again right away
# as a form of review (or of testing/troubleshooting if something unexpected
# happened the first time). So rather than shutting down the network here, the
# last lesson fragment informs the user that they may want to shut it down once
# they’re done.
