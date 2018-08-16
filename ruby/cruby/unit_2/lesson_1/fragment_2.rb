# In order to serialize data with Avro, we need a schema.

# Avro schemas are specified as JSON objects:

require 'json'

schema_json = {
  name: 'TimeZone',
  type: 'record',
  fields: [{ name: 'country_code',
             type: 'string',
             doc: 'In the tz database this is named `cc`.' },
           { name: 'latitude',
             type: 'int' },
           { name: 'longitude',
             type: 'int' },
           { name: 'name',
             type: 'string',
             doc: 'In the tz database this is named `tz`.' },
           { name: 'offset',
             type: 'string' }]
}.to_json
