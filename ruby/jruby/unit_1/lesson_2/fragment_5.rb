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
# ## Next Lesson
#
# Up next in lesson 3, coming soon: learn how to use Consumer Groups
# to scale an application across multiple machines and
# easily checkpoint progress so it can be resumed cleanly
# at any time.
#
# Since the next lesson isn’t ready yet, you might want to shut down the Kafka
# broker that’s running as a Docker container. To do so, run `./stop.sh`. Just
# remember that if you do so and then subsequently want to run this lesson
# again, you’ll need to run the first lesson again beforehand, because this
# lesson uses the Docker containers started and the records produced in the
# first lesson.
