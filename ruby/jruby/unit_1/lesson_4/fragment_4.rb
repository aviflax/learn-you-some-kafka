# Get ready to consume the records:
consumer.assign([TopicPartition.new(topic, 0)])

# Now let’s consume for a few seconds:
timeout_millis = 3000
records = consumer.poll timeout_millis

# Let’s see what the records look like fresh out of the broker:
records.map(&:value)
