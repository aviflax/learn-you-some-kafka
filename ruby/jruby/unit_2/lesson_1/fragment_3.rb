# In order to serialize data with Avro, we need a schema.

# Avro schemas are specified as JSON objects:

require 'json'

# IANA Time Zone Database: https://www.iana.org/time-zones

schema_json = {
  name: 'TimeZone',
  type: 'record',
  fields: [{ name: 'country_code',
             type: 'string',
             doc: 'In the IANA Time Zone Database this is named `cc`.' },
           { name: 'latitude',
             type: 'int' },
           { name: 'longitude',
             type: 'int' },
           { name: 'name',
             type: 'string',
             doc: 'In the IANA Time Zone Database this is named `tz`.' },
           { name: 'offset',
             type: 'string' }]
}.to_json
