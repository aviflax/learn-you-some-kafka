# We could stop there, but we might need the hashes to use the same “format”
# as in the beginning of lesson 1. So we can transform their keys:

deserialized.map do |h|
  h.transform_keys do |key|
    key.downcase
       .tr(' ', '_')
       .to_sym
  end
end
