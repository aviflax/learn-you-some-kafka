# Now that we have a producer, and data to produce, we can
# produce!

topic = 'strings'

callback = lambda do |record_meta, exception|
  puts(if record_meta
         "Send succeeded! Partition #{record_meta.partition}, offset " \
         "#{record_meta.offset}"
       else
         "Send failed: #{exception}"
       end)
end

strings.each do |s|
  record = ProducerRecord.new topic, s
  producer.send record, callback
end

producer.flush
