# Now let’s consume the records and see what they look like fresh out of the
# broker:

records = client.fetch_messages topic: 'json',
                                partition: 0,
                                offset: :earliest
