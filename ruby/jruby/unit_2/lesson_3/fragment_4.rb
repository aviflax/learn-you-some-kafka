# Let’s create our serializer; this should be pretty familiar at this point:

serializer = Class.new do
  include Serializer

  def initialize(avro)
    @avro = avro
  end

  def serialize(_topic, data)
    # Kafka record keys are allowed to be null/nil; if so they’re still provided
    # to the serializer so the app can serialize null/nil however it wants.
    return nil if data.nil?

    h = data.transform_keys(&:to_s)

    # The first time #encode is called, the object will take care of registering
    # the schema with the registry, if it isn’t already registered.
    binary_string = @avro.encode h, schema_name: 'TimeZone'
    binary_string.to_java_bytes
  end
end.new(producer_avro)
