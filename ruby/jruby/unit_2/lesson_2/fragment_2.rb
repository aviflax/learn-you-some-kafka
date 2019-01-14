# First, we need the same schema that was used to serialize the values:

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

schema = Avro::Schema.parse schema_json
