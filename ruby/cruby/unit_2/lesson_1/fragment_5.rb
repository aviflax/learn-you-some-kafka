# Now that we have some prepped hashes and a parsed schema, we can serialize the
# hashes using the schema.

writer = Avro::IO::DatumWriter.new schema

serialize = lambda do |val|
  buf = StringIO.new
  encoder = Avro::IO::BinaryEncoder.new buf
  writer.write val, encoder
  buf.string
end

serialized_hashes = prepped_hashes.map { |ph| serialize[ph] }
