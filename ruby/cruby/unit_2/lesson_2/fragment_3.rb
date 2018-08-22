# As you can see, those values are not Ruby hashes — they’re serialized Avro
# values.

# So let’s deserialize those record values:

reader = Avro::IO::DatumReader.new schema

deserialize = lambda do |val|
  decoder = Avro::IO::BinaryDecoder.new StringIO.new val
  h = reader.read decoder

  # After deserializing the hash we’ll transform the keys from strings to
  # symbols just to make them more idiomatic to work with in Ruby.
  h.transform_keys(&:to_sym)
end

records.map(&:value)
       .map { |rv| deserialize[rv] }
