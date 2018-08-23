# Instead of using the avro gem directly, we’ll use avro_turf, a library that
# wraps avro and adds support for working with a schema registry.

require 'avro_turf/messaging'

# Messaging expects Avro schemata to be accessible as files on the filesystem,
# so for this lesson the schema is stored in ./TimeZone.avsc.
avro = AvroTurf::Messaging.new registry_url: 'http://schema-registry:8081/',
                               schemas_path: './'

serialize = lambda do |h|
  h2 = h.transform_keys(&:to_s)

  # The first time #encode is called, the object will take care of registering
  # the schema with the registry, if it isn’t already registered.
  avro.encode h2, schema_name: 'TimeZone'
end
