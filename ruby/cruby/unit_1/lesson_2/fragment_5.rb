# OK, that’s it for this lesson!
#
#
# ## Quick Review
#
# * We’ve consumed 3 records from Kafka — the same 3 we
#   produced in lesson 1
# * Once we consume them, they’re (basically) just
#   key/value pairs — we can do whatever we want with them
#
#
# ## Links
#
# * https://github.com/zendesk/ruby-kafka
#
#
# ## Next Lesson
#
# Up next in lesson 3: learn how to use Consumer Groups
# to scale an application across multiple machines and
# easily checkpoint progress so it can be resumed cleanly
# at any time.
#
# To start the next lesson, run this in your
# shell:
#
# ./start.sh lesson_3
#
# If you won’t be running the next lesson right now, we recommend you shut down
# the Kafka broker and ZooKeeper node that are running as Docker containers by
# running ./shutdown.sh
#
# Note: If you do so, then when you do want to run the next lesson you’ll need
# to start the unit over from lesson 1, as each lesson depends on the records
# produced in the preceding lessons.
