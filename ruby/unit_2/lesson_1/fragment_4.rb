# Before we can serialize the hashes using the schema, we need to address some
# field name mismatches between the hash keys and the schema field names:

prepped_hashes = hashes.map do |h|
  h.transform_keys do |key|
    key.to_s
       .tr('_', ' ')
       .capitalize
       .gsub(/ ([a-z])/) { ' ' + Regexp.last_match[1].upcase }
  end
end
