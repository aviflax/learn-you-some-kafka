# Unit 2, Lesson 2: Consuming Avro-serialized values

# First, we need the same schema that was used to serialize the values:

schema_source = <<-SCHEMA
  {"type": "record",
   "name": "TimeZone",
   "fields": [{"name": "Country Code",
               "type": "string",
               "doc": "In the tz database this is named `cc`."},
              {"name": "Latitude",
               "type": "int"},
              {"name": "Longitude",
               "type": "int"},
              {"name": "Name",
               "type": "string",
               "doc": "In the tz database this is named `tz`."},
              {"name": "Offset",
               "type": "string"}]}
SCHEMA

require 'avro'
schema = Avro::Schema.parse schema_source
