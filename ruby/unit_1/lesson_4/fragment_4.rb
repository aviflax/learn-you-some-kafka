# Now let’s consume the records and see what they look
# like fresh out of the broker:
records = []

thread = Thread.new do
  client.each_message topic: 'json' do |record|
    records.push record
    puts "Consumed record with offset #{record.offset}!"
  end
end

# Give the thread some time to do some work:
sleep 1

# Stop the thread and the client:
thread.exit
client.close

# Let’s take a look at what we just consumed:
records.map(&:value)
