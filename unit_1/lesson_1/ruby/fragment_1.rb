# Unit 1, Lesson 1: Producing Strings

# First, we need some strings.

strings = IO.readlines 'strings.txt', chomp: true

# And let’s return the first 30 chars of each string, just
# so you can have a sense of what’s in these strings:

strings.map { |s| s[0..29] }
