# As you can see, the record values are not structured data — they’re structured
# data that’s been serialized into strings using some obscure serialization
# format.

# Now let’s deserialize the record values:
deserialized = records.map(&:value)
                      .map { |val| JSON.parse val, symbolize_names: true }

# TEST_ASSERTIONS #
raise 'AssertionError' unless deserialized == vals
