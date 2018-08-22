# Now that we have a client, it’s time to consume some records!

# An application would normally use client#each_message, but for our purposes
# it’s easier to use the slightly lower-level client#fetch_messages.
records = client.fetch_messages topic: 'strings',
                                partition: 0,
                                offset: :earliest

# TEST_ASSERTIONS #
raise 'AssertionError' unless records.length == 3
