#!/usr/bin/env ruby
#  regular expression match `School`

# Check if an argument is provided
if ARGV.empty?
  exit 1
end

# Get the argument
input_string = ARGV[0]

# Regular expression pattern
pattern = /^h.n$/

# Find all occurrences of the pattern in the input string
matches = input_string.scan(pattern)

# Check if the input string matches the pattern
if input_string.match?(pattern)
  matches.each do |match|
    print match
  end
end
