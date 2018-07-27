# Unit 1, Lesson 3: Consumer Groups

# Before we get started, please note: this lesson requires
# that the network started by lesson 1 still be up and
# running. So if you haven’t ran lesson 1 for awhile, you
# should probably do so now, and then come back here.

# This lesson is almost the same as the previous; the only
# real difference is that here we’re going to use Kafka’s
# Consumer Groups feature, rather than the “standalone” or
# “simple” consumer mode that we used before.

# We’ll use ruby-kafka again.
require 'kafka'

# As you may recall, ruby-kafka’s main class Kafka::Client
# requires very little configuration — just a list of
# broker addresses:
SEED_BROKERS = ['kafka:9092']

# A Logger:
require 'logger'
logger = Logger.new STDOUT, level: :info

# The Client:
client = Kafka::Client.new seed_brokers: SEED_BROKERS,
                           logger: logger

# And now — this is different — a Consumer:
consumer = client.consumer group_id: 'lesson-3'

# That object prints a dense block when it’s converted to a
# string, so we’ll just return nil instead.
nil
