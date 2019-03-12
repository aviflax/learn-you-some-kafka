# Let’s create our deserializer; this should also be pretty familiar at this
# point, but this time we’ll create a dedicated object to do the Avro decoding
# for us, while integrating with the schema registry.

# So as to demonstrate that avro_turf’s Messaging class is capable of
# downloading schemas from the schema registry on the fly, we’ll create a
# new instance that doesn’t know where to find local schemas:
consumer_avro = Messaging.new registry_url: 'http://schema-registry:8081/',
                              schemas_path: 'dir-does-not-exist'

deserializer = Class.new do
  include Deserializer

  def initialize(avro)
    @avro = avro
  end

  def deserialize(_topic, data)
    h = @avro.decode String.from_java_bytes data
    h.transform_keys(&:to_sym)
  end
end.new(consumer_avro)
