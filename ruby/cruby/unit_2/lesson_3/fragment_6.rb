# Now let’s deserialize those record values.

# So as to demonstrate that avro_turf’s Messaging class is capable of
# downloading schemas from the schema registry on the fly, we’ll create a new
# instance that doesn’t know where to find local schemas:

avro = AvroTurf::Messaging.new registry_url: 'http://schema-registry:8081/',
                               schemas_path: 'dir-does-not-exist'

# Every time Messaging#decode is called it extracts a schema ID from the
# supplied value. If the schema with that ID is already present in its in-memory
# cache, it’s just used; if not, the object retrieves the schema from the
# registry via its ID, saves it in its in-memory cache, and then uses it.

records.map(&:value)
       .map { |rv| avro.decode rv }
       .map { |h| h.transform_keys(&:to_sym) }
