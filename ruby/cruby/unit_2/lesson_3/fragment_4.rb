# Now that we have our serialized hashes, we can serialize them and then produce
# them to the topic.

hashes.map { |h| serialize[h] }
      .each { |sh| deliver[sh] }
