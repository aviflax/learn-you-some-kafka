# Now let’s take a look at what we’ve collected:
records.map(&:value)
       .map { |v| v[0, 20] }
