# Now let’s consume the records

config = { 'auto.offset.reset' => 'earliest',
           'bootstrap.servers' => 'kafka:9092' }
consumer = KafkaConsumer.new config, deserializer, deserializer

topic = 'avro'
consumer.assign([TopicPartition.new(topic, 0)])

timeout_millis = 3000
records = consumer.poll timeout_millis

# When these print out in your terminal you should see that they’ve been
# automatically deserialized into Ruby hashes.
vals = records.map(&:value)

# TEST_ASSERTIONS #
raise 'AssertionError' unless vals.length == 3
raise 'AssertionError' unless vals.all? { |v| v.is_a? Hash }
