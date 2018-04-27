# Deserialize the record values
records.map(&:value)
       .map { |val| JSON.parse val, symbolize_names: true }
