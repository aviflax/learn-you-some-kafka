# Now that we have our data and a parsed schema, we can serialize the data
# using the schema.

writer = Avro::IO::DatumWriter.new schema

serialize = lambda do |h|
  # Before serializing the hash we’ll transform the keys from symbols to strings
  # because the avro gem (bizarrely) doesn’t support symbol keys.
  h2 = h.transform_keys(&:to_s)

  buf = StringIO.new
  encoder = Avro::IO::BinaryEncoder.new buf
  writer.write h2, encoder
  buf.string
end

serialized_hashes = hashes.map { |h| serialize[h] }
