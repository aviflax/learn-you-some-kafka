#!/bin/bash

set -ex

cp ../../../shared/* ../shared/* ./

docker-compose -p cruby_unit_2 build
docker-compose -p cruby_unit_2 run --rm lesson
docker-compose -p cruby_unit_2 down
