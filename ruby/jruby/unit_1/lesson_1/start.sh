#!/bin/bash

set -ex

cp ../../../shared/* ../shared/* ./

docker-compose -p jruby_unit_1 build
docker-compose -p jruby_unit_1 run --rm lesson
docker-compose -p jruby_unit_1 down
