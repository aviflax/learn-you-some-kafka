#!/bin/bash

if [ $# -eq 0 ]; then
    echo 'You must specify at least one path to test.'
    exit 1
fi

set -ex

for UNIT_PATH; do
  if [ ! -d "$UNIT_PATH/lesson_1" ]; then
    echo "$UNIT_PATH does not appear to be a unit."
    exit 1
  fi

  # Run in a subshell so each iteration starts in the same dir
  (
  set -ex # Maybe this is inherited by the subshell?

  cp test_unit.rb "$UNIT_PATH/"
  cd $UNIT_PATH

  # Start ZooKeeper and then the Kafka broker
  docker-compose up -d zookeeper
  sleep 1 # Wait for ZooKeeper to come up before starting the Kafka broker
  docker-compose up -d kafka
  sleep 3 # Wait for the Kafka broker to come up before proceeding with the test

  docker-compose build
  docker-compose run --rm unit ruby test_unit.rb
  docker-compose down
  )
done
