# Unit 1, Lesson 2: Consuming Strings

# Before we get started, please note: this lesson requires
# that the network started by lesson 1 still be up and
# running. So if you haven’t ran lesson 1 for awhile, you
# should probably do so now, and then come back here.

# We’ll use the canonical Java Kafka consumer that’s part of the Kafka project.
# It’s already been installed via jbundler (see Dockerfile and Jarfile).

# Before we can instantiate a consumer, we have some setup busywork to get out
# of the way.

# Brute-force require all jars. It would be cleaner to use `require 'jbundler'`
# but that’s just not working for some reason.
Dir['/root/.m2/repository/**/*jar'].each { |f| require f }

# “import” some Java classes so we can refer to them by their simple name
java_import org.apache.kafka.clients.consumer.KafkaConsumer
java_import org.apache.kafka.common.TopicPartition
