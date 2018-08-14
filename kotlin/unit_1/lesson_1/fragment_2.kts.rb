# We’ll use the canonical Java Kafka producer that’s part of the Kafka project.
# It’s already been installed via jbundler (see Dockerfile and Jarfile in
# `../shared`).

# Before we can instantiate a producer, we have some setup busywork to get out
# of the way.

# Brute-force require all jars. It would be cleaner to use `require 'jbundler'`
# but that’s just not working for some reason.
Dir['/root/.m2/repository/**/*jar'].each { |f| require f }

# “import” some Java classes so we can refer to them by their simple name
java_import org.apache.kafka.clients.producer.KafkaProducer
java_import org.apache.kafka.clients.producer.ProducerRecord
