#!/bin/bash

set -ex

for UNIT_PATH in ../*ruby/unit*
do
  # Run in a subshell so each iteration starts in the same dir
  (
  set -ex # Maybe this is inherited by the subshell?

  cp test_unit.rb "$UNIT_PATH/"
  cd $UNIT_PATH

  # Copy Docker configs to unit level so the entire unit becomes the context.
  # We also need files like Gemfile/Jarfile so the images build successfully.
  cp shared/* ./

  # Technique for getting “bare” name of current dir from here:
  #   https://stackoverflow.com/a/1371283/7012 (it might prove problematic as it
  # might require bash (which doesn’t ship with Alpine).)
  RUNTIME=$(cd .. && echo ${PWD##*/})
  UNIT=${PWD##*/}
  PROJECT="${RUNTIME}_${UNIT}"

  # Start Zookeeper and then Kafka, with delays after each for startup
  docker-compose -p $PROJECT up -d zookeeper
  sleep 2 # Wait for Zookeeper to come up before starting Kafka
  docker-compose -p $PROJECT up -d kafka
  sleep 10 # Wait for Kafka to come up before proceeding with the test

  docker-compose -p $PROJECT build
  docker-compose -p $PROJECT run --rm --entrypoint "ruby test_unit.rb" lesson
  docker-compose -p $PROJECT down
  )
done

# NB: when adapting this to run in CI, skip the below git clean stuff

echo 'A git clean is probably needed! It would remove these files:'
git clean -n ..

# prompt technique from https://stackoverflow.com/a/1885534/7012
read -p "Would you like these files permanently deleted? y/n" -n 1 -r && echo

if [[ $REPLY =~ ^[Yy]$ ]]
then
  git clean -f ..
else
  echo 'OK, the files have been left alone.'
fi
