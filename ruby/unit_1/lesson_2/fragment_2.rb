# Now that we have a client, it’s time to consume some
# records!

# We’ll collect the records in this array:
records = []

# each_message will block and loop indefinitely, yielding
# each record in turn. If a given block invocation returns
# successfully — i.e. it doesn’t raise an exception — then
# the record will be marked as having been successfully
# processed, and the client will update its offsets for the
# topic accordingly.

# Note: ruby-kafka’s API refers to Kafka records as
# messages. I personally see this as an error, but it
# shouldn’t get in our way too much.

consume = lambda do
  client.each_message topic: 'strings' do |record|
    records.push record
    puts "Consumed record with offset #{record.offset}!"
  end
end

# Because each_message blocks, we’ll run it in a
# new thread, so we can see the output and then stop the
# client when we’re ready.

thread = Thread.new { consume.call }

# Let’s give the thread+block some time to do some work:
sleep 1

# Stop the thread and the client:
thread.exit
client.close

# Confirm we collected some records:
records.count
