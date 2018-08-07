# Let’s deserialize those record values:

reader = Avro::IO::DatumReader.new schema

deserialize = lambda do |val|
  decoder = Avro::IO::BinaryDecoder.new StringIO.new val
  reader.read decoder
end

deserialized = records.map(&:value)
                      .map { |rv| deserialize[rv] }
