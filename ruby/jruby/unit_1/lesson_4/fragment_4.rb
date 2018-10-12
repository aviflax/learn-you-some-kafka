# Let’s produce these values to our topic — same as in lesson 1, except this
# time we’re producing hashes rather than strings. The producer should
# automatically serialize our hashes into JSON strings using our bespoke
# Serializer.

topic = 'json'

callback = lambda do |record_meta, exception|
  puts(if record_meta
         "Send succeeded! Partition #{record_meta.partition}, offset " \
         "#{record_meta.offset}"
       else
         "Send failed: #{exception}"
       end)
end

hashes.each { |h| producer.send ProducerRecord.new(topic, h), callback }

producer.flush
