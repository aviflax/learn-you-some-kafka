# And that’s it for this lesson!

# Let’s set the logger level to FATAL so as to suppress the
# disconnect message.
DeliveryBoy.logger.level = Logger::FATAL

#
# ## Quick Review
#
# * We’ve produced 3 records to Kafka
# * Each record has a nil key
# * Each record has a string value
# * Those strings are paragraphs of text without newlines
#
# You might be wondering: how can we confirm that those
# records actually made it to Kafka, i.e. they were
# successfully and durably written?
#
# If so, great — that’s exactly what we’ll learn in the
# next lesson!
#
# ## Links
#
# * http://skateipsum.com
# * https://github.com/zendesk/delivery_boy
#
#
# ## Next Lesson
#
# To start the next lesson, run this in your shell:
#
# ./start.sh lesson_2
#
# If you won’t be running the next lesson right now, we recommend you shut down
# the Kafka broker and ZooKeeper node that are running as Docker containers by
# running ./shutdown.sh
#
# Note: If you do so, then when you do want to run the next lesson you’ll need
# to start the unit over from lesson 1, as each lesson depends on the records
# produced in the preceding lessons.
