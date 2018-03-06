# Now that we have a Consumer — actually, we’re not quite
# ready to consume records. First we need to tell the
# Consumer to subscribe to our topic:

consumer.subscribe 'strings'

# We’ll collect the records in this array:
records = []

# each_message will block and loop indefinitely, yielding
# each record in turn. If a given block invocation returns
# successfully — i.e. it doesn’t raise an exception — then
# the record will be marked as having been successfully
# processed, and the Consumer will update its offsets for the
# topic accordingly.

# Note: ruby-kafka’s API refers to Kafka records as
# messages. I personally see this as an error, but it
# shouldn’t get in our way too much.

consume = lambda do
  consumer.each_message do |record|
    records.push record
    puts "Consumed record with offset #{record.offset}!"
  end
end

# Because each_message blocks, we’ll run it in a
# new thread, so we can see the output and then stop the
# Consumer when we’re ready.
thread = Thread.new { consume.call }

# This can take 2–10 seconds, so just hit enter after you
# see this:
#
#   Consumed record with offset 2!
#
# to load the next fragment, which will kill the thread
# when you run it.
nil
