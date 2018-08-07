# OK, now that all that’s out of the way, we can instantiate a consumer:

deserializer_class = 'org.apache.kafka.common.serialization.StringDeserializer'

config = {
  'bootstrap.servers' => 'kafka:9092',
  'value.deserializer' => deserializer_class,
  'key.deserializer' => deserializer_class,
  'auto.offset.reset' => 'earliest',

  # This setting wasn’t present in the prior lesson — it’s only needed whe
  # using Consumer Groups. (Consumer Groups should generally be used by
  # default.)
  'group.id' => 'jruby-unit-1-lesson-3'
}

consumer = KafkaConsumer.new config
