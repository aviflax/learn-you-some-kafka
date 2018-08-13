#!/bin/bash

# Determine docker-compose project name.
#
# This is meant to be run from within one of the start.sh or shutdown.sh scripts
# from within a unit dir.
#
# We need this because otherwise units of different programming systems would
# interfere with each other. i.e. the compose networks defined in
# ruby/cruby/unit_1/docker-compose.yml and ruby/jruby/unit_1/docker-compose.yml
# would by default use the project name `unit_1` which means that containers
# started within those networks such as zookeeper or kafka could step on each
# other; if containers are started within unit 1 of one system and not removed,
# and then a lesson from unit 1 of a different system is started, it’ll see that
# those containers exist and just use them. This could lead to unexpected,
# puzzling, and hard-to-debug problems with the lessons.

RUNTIME=$(cd .. && echo "${PWD##*/}")
UNIT=${PWD##*/}
PROJECT="${RUNTIME}_${UNIT}"

echo "$PROJECT"
