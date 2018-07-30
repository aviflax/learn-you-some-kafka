# Let’s create some complex values:

vals = IO.readlines('strings.txt', chomp: true)
         .map do |str|
           { fragment: str[0..9],
             full_len: str.length }
         end
