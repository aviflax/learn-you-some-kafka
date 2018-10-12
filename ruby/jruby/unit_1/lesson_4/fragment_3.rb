# Instantiate our Producer and Consumer:

base_config = { 'bootstrap.servers' => 'kafka:9092' }
serializer = Serializer.new

# We’re supplying our bespoke serializer to KafkaProducer’s constructor as both
# the key serializer and the value serializer, even though we won’t be including
# keys in the records in this lesson, simply because the constructor requires a
# key serializer. The same applies to the KafkaConsumer constructor call below.
producer = KafkaProducer.new base_config, serializer, serializer

consumer_config = base_config.merge 'auto.offset.reset' => 'earliest'
deserializer = Deserializer.new
consumer = KafkaConsumer.new consumer_config, deserializer, deserializer

# Create some complex values to produce:

hashes = IO.readlines('strings.txt', chomp: true)
           .map do |s|
             { fragment: s[0..9],
               full_len: s.length }
           end
