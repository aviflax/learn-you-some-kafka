# Now that we have a consumer, it’s time to consume some records!

# First we need to subscribe to a topic:
topics = ['strings']
consumer.subscribe topics

# We’ll use a much higher timeout than in the prior lesson, because it can take
# some time to (re-)join the consumer group. 5 seconds was plenty of time on the
# author’s machine, but if you consistently get no records back, even if you’re
# sure there’s been no offset committed for this group, or you’re sure the
# offset is 0, then you may need to increase this number:
timeout_millis = 5000

# poll is usually called in a loop but in our case we only want to poll once:
records = consumer.poll timeout_millis

# Close the consumer to ensure our group’s new offset is committed:
consumer.close

# Let’s take a look at what we’ve consumed:
records.map(&:value)
       .map { |v| v[0, 20] }

# TEST_ASSERTIONS #
raise 'AssertionError' unless records.count == 3
