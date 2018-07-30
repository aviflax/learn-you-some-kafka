#!/bin/bash

set -ex

cp ../../../shared/* ../shared/* ./

docker-compose build
docker-compose run --rm lesson
docker-compose down
