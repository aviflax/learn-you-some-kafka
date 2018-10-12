# Unit 1, Lesson 4: Serialization and Deserialization

# Before we get started, please note: this lesson requires that the network
# started by lesson 1 still be up and running. So if you haven’t ran lesson 1
# for awhile, you should probably do so now, and then come back here.

# Just as in the prior lessons, we have some setup busywork to get out
# of the way before we can instantiate a producer and a consumer.

# Brute-force require all jars. It would be cleaner to use `require 'jbundler'`
# but that’s just not working for some reason.
Dir['/root/.m2/repository/**/*jar'].each { |f| require f }

# “import” some Java classes so we can refer to them by their simple names:
java_import org.apache.kafka.clients.producer.KafkaProducer
java_import org.apache.kafka.clients.producer.ProducerRecord
java_import org.apache.kafka.clients.consumer.KafkaConsumer
java_import org.apache.kafka.common.TopicPartition
