# Now let’s configure an object that will do the Avro serialization.

# This time, instead of using the avro gem directly, we’ll use avro_turf, a
# library that wraps avro and adds support for working with a schema registry.

require 'avro_turf/messaging'
Messaging = AvroTurf::Messaging

# Messaging expects Avro schemata to be accessible as files on the filesystem,
# so for this lesson the schema is stored in ./TimeZone.avsc.
producer_avro = Messaging.new registry_url: 'http://schema-registry:8081/',
                              schemas_path: './'
