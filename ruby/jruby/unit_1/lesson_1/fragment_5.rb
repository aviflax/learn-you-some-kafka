# And that’s it for this lesson!
#
#
# ## Quick Review
#
# * We’ve produced 3 records to Kafka, and confirmed that they actually made it
# * Each record has a nil key and a string value
# * Those string values are paragraphs of text without newlines
#
#
# ## Next Lesson
#
# Up next in lesson 2: learn how to consume those records we just produced.
#
# To start the next lesson, run this in your shell:
#
# cd ../lesson_2 && ./start.sh
#
# If you won’t be running lesson 2 right now, you might want to shut down the
# Kafka broker that’s running as a Docker container. To do so, run `./stop.sh`.
# Just remember that when you do want to run lesson 2, you’ll need to run this
# lesson again beforehand, because lesson 2 uses the Docker containers started
# and the records produced in this lesson.
