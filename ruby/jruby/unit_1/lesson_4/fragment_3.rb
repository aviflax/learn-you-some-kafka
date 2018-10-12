# Let’s produce these values to our topic — same as in lesson 1, except this
# time let’s produce hashes serialized as stringified JSON objects.

require 'json'

topic = 'json'

vals.map(&:to_json)
    .each { |j| producer.send ProducerRecord.new(topic, j) }

# As you may know, #to_json returns a “stringified” JSON object — a string
# representation of a JSON object. So the values we’re producing to the topic
# *happen* to be human-readable strings, but that’s incidental to what we’re
# doing here: producing complex values (hashes, in this case) to a Kafka topic
# in a serialized form such that they can be deserialized by downstream
# consumers.
