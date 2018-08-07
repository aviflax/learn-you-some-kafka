# OK, now that all that’s out of the way, we can instantiate a consumer:

deserializer_class = 'org.apache.kafka.common.serialization.StringDeserializer'

config = {
  'bootstrap.servers' => 'kafka:9092',
  'value.deserializer' => deserializer_class,
  'key.deserializer' => deserializer_class,
  'auto.offset.reset' => 'earliest'
}

consumer = KafkaConsumer.new config
