# That’s it for this lesson, and this unit!
#
#
# ## Quick Review
#
# * We’ve used both delivery_boy and ruby-kafka to produce
#   plain-text records to Kafka topics
# * We’ve used ruby-kafka’s “simple consumer” feature to
#   consume records
# * We’ve used ruby-kafka’s “consumer groups” feature to
#   consume records
# * We’ve produced records with serialized complex values
#   and then consumed and deserialized those records
#
#
# ## Cleanup
#
# If you’d like to minimize load on your system, you can
# now shut down the Kafka broker and its supporting
# Zookeeper node like so:
#
# cd ../lesson_1/ && docker-compose down
#
#
# ## Next Unit
#
# The next unit isn’t quite  ready yet, but it’ll be on
# serializing and deserializing records with Avro. While
# you’re eagerly awaiting that lesson, here are some good
# resources for learning just what Avro _is_ even:
#
# * The offical Avro docs:
#    http://avro.apache.org/docs/current/
#
# * Martin Kleppmann explains and compares how Avro,
#   Protocol Buffers, and Thrift approach schema evolution
#   in “Schema evolution in Avro, Protocol Buffers and
#   Thrift”. Now, schema evolution is actually a fairly
#   advanced topic, but Kleppmann’s introduction is
#   actually really helpful, so it’s recommended:
#    https://martin.kleppmann.com/2012/12/05/schema-evolution-in-avro-protocol-buffers-thrift.html
#
