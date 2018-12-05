# Now let’s create a deserializer

deserializer = Class.new do
  include Deserializer

  def initialize(schema)
    @reader = Avro::IO::DatumReader.new schema
  end

  def deserialize(_topic, data)
    decoder = BinaryDecoder.new StringIO.new String.from_java_bytes data
    v = @reader.read decoder

    # Since we know the values are hashes let’s transform the keys from strings
    # to symbols just to make them more idiomatic to work with in Ruby.
    v.transform_keys(&:to_sym)
  end
end.new(schema)
