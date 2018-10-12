# As you can see, the consumed record values have been automatically
# deserialized via our bespoke Deserializer and are now identical to the values
# that we produced. Not bad!
#
# That’s it for this lesson, and this unit!
#
#
# ## Quick Review
#
# * In lesson 1 we used the Producer and Consumer to produce plain-text records
#   to Kafka topics
# * In lesson 2 we used the Consumer’s “simple” mode to consume records
# * In lesson 3 we used the Consumer’s “consumer groups” feature to consume
#   records
# * In this lesson we’ve produced records with serialized complex values and
#   then consumed and deserialized those records
#
#
# ## Cleanup
#
# We recommend you now shut down the Kafka broker and its supporting Zookeeper
# node in order to minimize load on your system by running ./shutdown.sh
#
#
# ## Next Unit — Coming Soon!
#
# Unit 2 will be on serializing and deserializing records with Avro.
