# Now that we have a consumer, it’s time to consume some records!

# First we need to “assign” a topic and partition to consume from:
topic = 'strings'
partition = 0
topic_partition = TopicPartition.new topic, partition
topic_partitions = [topic_partition]
consumer.assign topic_partitions

# Now let’s consume for a second:
timeout_millis = 1000

# poll is usually called in a loop but in our case we only want to poll once:
records = consumer.poll timeout_millis

# Let’s take a look at what we’ve consumed:
records.map(&:value)
       .map { |v| v[0, 20] }
