#!/bin/sh

set -ex
PROJECT=`../../shared/project-name.sh`
docker-compose -p $PROJECT down
