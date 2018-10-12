# Unit 1, Lesson 4: Serialization and Deserialization

# Before we get started, please note: this lesson requires that the network
# started by lesson 1 still be up and running. So if you haven’t ran lesson 1
# for awhile, you should probably do so now, and then come back here.

# Just as in the prior lessons, we have some setup busywork to get out
# of the way before we can instantiate a producer and a consumer.

# Brute-force require all jars. It would be cleaner to use `require 'jbundler'`
# but that’s just not working for some reason.
Dir['/root/.m2/repository/**/*jar'].each { |f| require f }

# “import” some Java classes so we can refer to them by their simple name
java_import org.apache.kafka.clients.producer.KafkaProducer
java_import org.apache.kafka.clients.producer.ProducerRecord
java_import org.apache.kafka.clients.consumer.KafkaConsumer
java_import org.apache.kafka.common.TopicPartition

# Instantiate a producer just as we did in lesson 1
serializer_class = 'org.apache.kafka.common.serialization.StringSerializer'
producer = KafkaProducer.new 'bootstrap.servers' => 'kafka:9092',
                             'value.serializer' => serializer_class,
                             'key.serializer' => serializer_class

# Instantiate a consumer just as we did in lesson 2
deserializer_class = 'org.apache.kafka.common.serialization.StringDeserializer'
consumer = KafkaConsumer.new 'bootstrap.servers' => 'kafka:9092',
                             'value.deserializer' => deserializer_class,
                             'key.deserializer' => deserializer_class,
                             'auto.offset.reset' => 'earliest'
