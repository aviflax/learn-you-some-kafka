# OK, that’s it for this lesson!
#
#
# ## Quick Review
#
# * We’ve used a consumer group to consume 3 records from
#   the Kafka broker; the same 3 we produced in lesson 1
#   and consumed in lesson 2 with a simple consumer.
#
# * It doesn’t look so different in our code, but using a
#   consumer group is a much more robust approach to
#   consuming from a topic. As it facilitates resuming
#   after a crash, and distributing work across multiple
#   processes (scaling horizontally), and redistributing
#   work from dead processes to live ones (high
#   availability) it’s much more suited to mission-critical
#   applications and systems than the simple consumer,
#   which is a better fit for simple scripts and tools.
#
#
# ## Extra Credit
#
# Try running the lesson again. Observe what happens, and
# see if it lines up with what you expect. If not, you
# should be able to find an explanation in these docs on
# Consumer Groups:
#   https://github.com/zendesk/ruby-kafka#consumer-groups
#
#
# ## Links and Further Reading
#
# * An introduction to consumer groups:
#     https://kafka.apache.org/documentation/#intro_consumers
#
# * Another introduction to consumer groups:
#     https://github.com/zendesk/ruby-kafka#consumer-groups
#
# * For more on how to _think_ about Kafka — i.e. as a
#   messaging system, storage system, data transport
#   system, etc — and its data model, i.e. records vs
#   messages, the introduction in the Kafka docs is
#   excellent:
#     https://kafka.apache.org/documentation/#introduction
#
#   The entire introduction is excellent; these specific
#   parts are particularly recommended:
#
#   * The introduction to the introduction
#   * Kafka as a Messaging System
#   * Kafka as a Storage System
#   * Kafka for Stream Processing
#   * Putting the Pieces Together
#
#
# ## Next Lesson
#
# Up next in lesson 4: learn how to use serialization and
# deserialization with Kafka so you can easily produce and
# consume complex values.
#
# To start the next lesson, run this in your
# shell:
#
# ./start.sh lesson_4
#
# If you won’t be running the next lesson right now, we recommend you shut down
# the Kafka broker and ZooKeeper node that are running as Docker containers by
# running ./shutdown.sh
#
# Note: If you do so, then when you do want to run the next lesson you’ll need
# to start the unit over from lesson 1, as each lesson depends on the records
# produced in the preceding lessons.
