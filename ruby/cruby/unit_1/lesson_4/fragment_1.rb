# Unit 1, Lesson 4: Serialization and Deserialization

# Before we get started, please note: this lesson requires
# that the network started by lesson 1 still be up and
# running. So if you haven’t ran lesson 1 for awhile, you
# should probably do so now, and then come back here.

# We’ll use ruby-kafka again, and set it up the same way as
# in lessons 2 and 3:

require 'kafka'
require 'logger'

SEED_BROKERS = ['kafka:9092']
logger = Logger.new STDOUT, level: :info
client = Kafka::Client.new seed_brokers: SEED_BROKERS,
                           logger: logger

# Create the topic explicitly, rather than just letting it
# be created on-the-fly, because I’ve seen that approach
# sometimes fail due to a race condition:
begin
  client.create_topic 'json'
rescue Kafka::TopicAlreadyExists
  logger.info 'the topic already existed'
end
