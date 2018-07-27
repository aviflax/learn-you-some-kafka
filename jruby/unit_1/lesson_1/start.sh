#!/bin/bash

set -ex

cp ../../../ruby/lesson.rb ../Dockerfile ../Gemfile ../Jarfile ./

docker-compose build
docker-compose run --rm lesson
docker-compose down
