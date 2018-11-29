# Instantiate our Producer with our serializer

# We’re supplying our bespoke serializer to KafkaProducer’s constructor as both
# the key serializer and the value serializer, even though we won’t be including
# keys in the records in this lesson, simply because the constructor requires a
# key serializer. The same applies to the KafkaConsumer constructor call below.
producer = KafkaProducer.new({ 'bootstrap.servers' => 'kafka:9092' },
                             serializer, serializer)

# Let’s produce these values to our topic — same as in unit 1, lesson 4, except
# this time we’re serializing the hashes using Avro rather than JSON. The
# producer should automatically serialize our hashes into binary Avro values
# using our bespoke serializer.

topic = 'avro'

produced = 0

callback = lambda do |record_meta, err|
  produced += 1 if record_meta
  puts record_meta ? "Success at offset #{record_meta.offset}" : "Error: #{err}"
end

hashes.each { |h| producer.send ProducerRecord.new(topic, h), callback }

producer.flush

# TEST_ASSERTIONS #
raise 'AssertionError' unless produced == hashes.length
