# OK, that’s it for this lesson!
#
#
# ## Quick Review
#
# * We’ve used a consumer group to consume 3 records from the Kafka broker; the
# same 3 we produced in lesson 1 and consumed in lesson 2 with a simple
# consumer.
#
# * It doesn’t look so different in our code, but using a consumer group is a
# much more robust approach to consuming from a topic. As it facilitates
# resuming after a crash, and distributing work across multiple processes
# (scaling horizontally), and redistributing work from dead processes to live
# ones (high availability) it’s much more suited to mission-critical
# applications and systems than the simple consumer, which is a better fit for
# simple scripts and tools.
