# Let’s create a serializer that will serialize each value using the schema

serializer = Class.new do
  # In JRuby, Java interfaces are mapped to Ruby modules, so mixing them in
  # is equivalent to the Java declaration that a class implements a given
  # interface. This isn’t actually necessary — the class will work just fine
  # a Serializer without mixing this in — but I like to include it as a form
  # of documentation. This makes explicit the contract that this class is
  # implementing.
  include Serializer

  def initialize(schema)
    @writer = Avro::IO::DatumWriter.new schema
  end

  def serialize(_topic, data)
    # No idea why, but sometimes this method is called with data being nil.
    return nil if data.nil?

    # Before serializing the hash we’ll transform the keys from symbols to
    # strings because the avro gem (bizarrely) doesn’t support symbol keys.
    h2 = data.transform_keys(&:to_s)

    buf = StringIO.new
    encoder = Avro::IO::BinaryEncoder.new buf
    @writer.write h2, encoder
    buf.string.to_java_bytes
  end
end.new(schema)
