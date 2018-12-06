# We don’t want to consume messages from lesson 1
topic = 'timezones_avro_lesson_3'
base_config = { 'bootstrap.servers' => 'kafka:9092' }

# Let’s produce!
producer = KafkaProducer.new(base_config, serializer, serializer)
callback = ->(meta, err) { puts meta ? "offset #{meta.offset}" : "err: #{err}" }
hashes.each { |h| producer.send ProducerRecord.new(topic, h), callback }
producer.flush
