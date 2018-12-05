# Unit 2, Lesson 2: Consuming Avro-serialized values

# Just as in the prior lessons, we have some setup busywork to get out
# of the way before we can instantiate a producer.

Dir['/root/.m2/repository/**/*jar'].each { |f| require f }

java_import org.apache.kafka.clients.consumer.KafkaConsumer
java_import org.apache.kafka.common.TopicPartition
java_import org.apache.kafka.common.serialization.Deserializer

# Also a shorthand for referring to a module:
require 'avro'
BinaryDecoder = Avro::IO::BinaryDecoder
