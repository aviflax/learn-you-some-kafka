# Now that we’ve serialized the hashes, we can produce them to a Kafka topic
# like any other value.

require 'delivery_boy'
require 'logger'

DeliveryBoy.configure do |config|
  config.client_id = 'Unit 2, Lesson 1'
  config.brokers = ['kafka:9092']
end

DeliveryBoy.logger.level = Logger::INFO

serialized_hashes.each do |sh|
  DeliveryBoy.deliver sh, key: nil, topic: 'timezones_avro'
end

# Let’s set the logger level to FATAL so as to suppress the disconnect message.
DeliveryBoy.logger.level = Logger::FATAL
