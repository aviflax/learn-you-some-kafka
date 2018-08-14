#!/bin/bash

set -ex

# If lesson is not specified, default to lesson_1:
if [[ -z "${1// }" ]]; then
  LESSON_DIR='lesson_1'
else
  LESSON_DIR=$1
fi

# If lesson dir does not exist, exit with error messsage:
if [ ! -d "$LESSON_DIR" ]; then
  echo "Lesson dir $LESSON_DIR does not exist or is not a directory."
  exit 1
fi

# We need this file to be in the docker “context” for the “unit” service defined
# in Dockerfile. Symlinks don’t work for this, and every Ruby unit requires this
# file, so we don’t want to duplicate it. So we copy it at runtime and the
# copies are invisible to git as specified in ../../.gitignore.
cp ../shared/lesson.kts ./

PROJECT=`../shared/project-name.sh`

docker-compose -p $PROJECT build
docker-compose -p $PROJECT run --rm unit lesson.kts $LESSON_DIR

# We leave the network up — i.e. not run
# `docker-compose down` — because every lesson relies
# on the state of the network from the prior lesson(s).
# Users can run ./shutdown.sh if they want to stop the network.
