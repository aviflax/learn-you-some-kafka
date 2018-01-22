# delivery_boy is the simplest solid library for producing.
# It’s already been installed via bundler (see Dockerfile).

require 'delivery_boy'

# delivery_boy uses a singleton for state and is thus
# configurable via a class method:

DeliveryBoy.configure do |config|
  config.client_id = 'Unit 1, Lesson 1'
  config.brokers = ['kafka:9092']
end

# The default DeliveryBoy logger is set to DEBUG and
# therefore prints out way too many messages. Let’s
# lower its verbosity.

require 'logger'
DeliveryBoy.logger.level = Logger::INFO
