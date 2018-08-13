# OK, that’s it for this lesson!
#
#
# ## Quick Review
#
# * We parsed an Avro schema, prepped some hashes to be compatible with that
#   schema, serialized those hashes with that schema, and then produced those
#   serialized hashes to a Kafka topic. Pretty rad!
#
#
# ## Links and Further Reading
#
# * Avro:
#     http://avro.apache.org/
#
# * Avro docs:
#    http://avro.apache.org/docs/current/
#
# * Martin Kleppmann explains and compares how Avro, Protocol Buffers, and
#   Thrift approach schema evolution in “Schema evolution in Avro, Protocol
#   Buffers and Thrift”. Schema evolution is a fairly advanced topic, but
#   Kleppmann’s introduction is broadly helpful, so it’s recommended:
#    https://martin.kleppmann.com/2012/12/05/schema-evolution-in-avro-protocol-buffers-thrift.html
#
#
# ## Next Lesson
#
# Up next in lesson 2: learn how to deserialize Avro-encoded data consumed from
# Kafka.
#
# To start the next lesson, run this in your
# shell:
#
# ./start.sh lesson_2
#
# If you won’t be starting the next lesson now, you can
# shut down the docker network with ./shutdown.sh
