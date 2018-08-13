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
# Up next in lesson 3: learn how to use Consumer Groups to scale an application
# across multiple machines and easily checkpoint progress so it can be resumed
# cleanly at any time.
#
# To start the next lesson, run this in your shell:
#
# ./start.sh lesson_3
#
# If you won’t be running lesson 3 right now, you might want to shut down the
# Kafka broker that’s running as a Docker container. To do so, run `./shutdown.sh`.
# Just remember that when you do want to run lesson 3, you’ll need to run all
# preceding lessons beforehand, because lesson 3 depends on the Docker
# containers started and the records produced in those preceding lessons.
