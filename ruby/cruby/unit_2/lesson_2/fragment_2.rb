# Now let’s consume those serialized records from the topic:

require 'kafka'
require 'logger'

logger = Logger.new STDOUT, level: :info
client = Kafka::Client.new seed_brokers: ['kafka:9092'], logger: logger

records = []

thread = Thread.new do
  client.each_message topic: 'timezones_avro' do |record|
    records.push record
    puts "Consumed record with offset #{record.offset}!"
  end
end

# Give the thread some time to do some work:
sleep 1

# Stop the thread and the client:
thread.exit
client.close

# Let’s take a look at what we just consumed:
records.map(&:value)

# You should see a bunch of serialized records as strings:
