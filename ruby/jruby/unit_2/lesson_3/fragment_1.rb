# Unit 2, Lesson 3: Producing and Consuming Avro with a Schema Registry

# Just as in the prior lessons, we have some setup busywork to get out
# of the way before we can use various Java classes.

Dir['/root/.m2/repository/**/*jar'].each { |f| require f }

java_import org.apache.kafka.clients.producer.KafkaProducer
java_import org.apache.kafka.clients.producer.ProducerRecord
java_import org.apache.kafka.common.serialization.Serializer
java_import org.apache.kafka.clients.consumer.KafkaConsumer
java_import org.apache.kafka.common.TopicPartition
java_import org.apache.kafka.common.serialization.Deserializer

# Suppress a very long and unimportant WARN message that the producer emits
java_import java.util.logging.Level
# Do not import java.util.logging.Logger because it would clobber Ruby’s Logger
java.util.logging.Logger.getLogger('').set_level(Level::SEVERE)
