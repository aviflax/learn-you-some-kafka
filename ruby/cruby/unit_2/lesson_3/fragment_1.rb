# Unit 2, Lesson 3: Producing and Consuming Avro with a Schema Registry

# First, we need some data that we’re going to serialize. We’ll just use the
# same data as in lesson 1.

hashes = [
  { country_code: 'CI',
    latitude: 519,
    longitude: -402,
    name: 'Africa/Abidjan',
    offset: '+00:00' },
  { country_code: 'GH',
    latitude: 533,
    longitude: -13,
    name: 'Africa/Accra',
    offset: '+00:00' },
  { country_code: 'ET',
    latitude: 902,
    longitude: 3842,
    name: 'Africa/Addis_Ababa',
    offset: '+03:00' }
]
