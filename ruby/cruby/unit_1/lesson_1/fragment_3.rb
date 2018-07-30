# Now that we have a producer, and data to produce, we can
# produce!

strings.each do |s|
  DeliveryBoy.deliver s, key: nil, topic: 'strings'
end

# The above call to `strings#each` returns `strings` but I
# don’t want that to be output when this code is run. So
# please enjoy this nil!
nil
