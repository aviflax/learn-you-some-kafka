# Let’s configure delivery_boy just as in lesson 1.

require 'delivery_boy'
require 'logger'

DeliveryBoy.configure do |config|
  config.client_id = 'Unit 2, Lesson 1'
  config.brokers = ['kafka:9092']
end

DeliveryBoy.logger.level = Logger::INFO

# We don’t want to consume messages from lesson 1
topic = 'timezones_avro_lesson_3'

# This Lambda will simplify producing after we serialize the hashes.
deliver = ->(val) { DeliveryBoy.deliver val, key: nil, topic: topic }
