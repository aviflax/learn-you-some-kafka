# In order to serialize data with Avro, we need a schema.

# Avro schemas are specified as JSON objects:

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
