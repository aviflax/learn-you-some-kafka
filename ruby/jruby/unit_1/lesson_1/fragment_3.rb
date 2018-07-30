# OK, now that all that’s out of the way, we can instantiate a producer:

serializer_class = 'org.apache.kafka.common.serialization.StringSerializer'

config = {
  'bootstrap.servers' => 'kafka:9092',
  'value.serializer' => serializer_class,
  'key.serializer' => serializer_class
}

producer = KafkaProducer.new config
