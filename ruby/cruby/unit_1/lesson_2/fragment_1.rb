# Unit 1, Lesson 2: Consuming Strings

# Before we get started, please note: this lesson requires
# that the network started by lesson 1 still be up and
# running. So if you haven’t ran lesson 1 for awhile, you
# should probably do so now, and then come back here.

# racecar is probably the simplest solid library for
# consuming. Unfortunately, I couldn’t figure out a
# straightforward way to use it without creating a
# subclass, and I hate subclasses.
#
# So instead we’ll use ruby-kafka, the lower-level library
# that both delivery_boy and racecar are built on.
#
# It’s already been installed via bundler (see Dockerfile).
require 'kafka'

# ruby-kafka’s main class Kafka::Client requires very
# little configuration — just a list of broker addresses:
SEED_BROKERS = ['kafka:9092']

# We’ll create a logger too, so we can see some of the
# activity as it happens:
require 'logger'
logger = Logger.new STDOUT, level: :info

# And now the client:
client = Kafka::Client.new seed_brokers: SEED_BROKERS,
                           logger: logger

# That object prints a dense block when it’s converted to a
# string, so rather than print that out we’ll confirm that
# it was configured correctly by listing the topics that
# the broker knows about:
client.topics
