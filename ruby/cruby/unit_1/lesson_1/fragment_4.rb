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
# To start the next lesson, run this in your
# shell:
#
# cd ../lesson_2 && ./start.sh
