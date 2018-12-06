# Let’s consume!

config = base_config.merge 'auto.offset.reset' => 'earliest'
consumer = KafkaConsumer.new config, deserializer, deserializer
consumer.assign([TopicPartition.new(topic, 0)])
records = consumer.poll 3000

# When these print out in your terminal you should see that they’ve been
# automatically deserialized into Ruby hashes.
vals = records.map(&:value)

# TEST_ASSERTIONS #
raise 'AssertionError' unless vals == hashes
