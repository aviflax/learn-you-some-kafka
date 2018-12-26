# Unit 2, Lesson 1: Producing Avro-serialized values

# Just as in the prior lessons, we have some setup busywork to get out
# of the way before we can instantiate a producer.

# Brute-force require all jars. It would be cleaner to use `require 'jbundler'`
# but that’s just not working for some reason.
Dir['/root/.m2/repository/**/*jar'].each { |f| require f }

# “import” some Java classes so we can refer to them by their simple names:
java_import org.apache.kafka.clients.producer.KafkaProducer
java_import org.apache.kafka.clients.producer.ProducerRecord
java_import org.apache.kafka.common.serialization.Serializer
