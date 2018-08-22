# Now let’s consume those serialized records from the topic:

require 'kafka'
require 'logger'

logger = Logger.new STDOUT, level: :info
client = Kafka::Client.new seed_brokers: ['kafka:9092'], logger: logger

records = client.fetch_messages topic: 'timezones_avro',
                                partition: 0,
                                offset: :earliest

# TEST_ASSERTIONS #
raise 'AssertionError' unless records.length == 3
raise 'AssertionError' unless records.all? { |r| r.value.instance_of? String }
