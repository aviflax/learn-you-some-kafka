#!/bin/bash

set -ex

cp ../../lesson.rb ../Dockerfile ../Gemfile ./

docker-compose build
docker-compose run --rm lesson
docker-compose down
