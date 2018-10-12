# The Java Producer and Consumer will automatically serialize and deserialize
# keys and values for us, if we supply Serializers and Deserializers when we
# instantiate them. In our case we’re going to want to serialize Ruby hashes to
# JSON strings, and then deserialize those JSON strings back into Ruby hashes.
# This will be quite easily accomplished via some very simple bespoke classes
# — as opposed to using classes that are included with the Kafka Java clients,
# as we did in the prior lessons in this unit.

require 'json'

class Serializer
  # In JRuby, Java interfaces are mapped to Ruby modules, so mixing them in
  # is equivalent to the Java declaration that a class implements a given
  # interface. This isn’t actually necessary — the class will work just fine
  # a Serializer without mixing this in — but I like to include it as a form
  # of documentation. This makes explicit the contract that this class is
  # implementing.
  include org.apache.kafka.common.serialization.Serializer

  def serialize(_topic, data)
    data.to_json.to_java_bytes
  end
end

class Deserializer
  include org.apache.kafka.common.serialization.Deserializer

  def deserialize(_topic, data)
    json_string = String.from_java_bytes data
    JSON.parse json_string, symbolize_names: true
  end
end
