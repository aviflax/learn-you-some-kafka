#!/bin/bash

set -e

docker-compose build
docker-compose run lesson
docker-compose down
