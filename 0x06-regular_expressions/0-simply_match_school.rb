#!/usr/bin/env ruby
#  regular expression match `School`

# Check if an argument is provided
if ARGV.empty?
  puts "Usage: #{$PROGRAM_NAME} <string>"
  exit 1
end

# Get the argument
input_string = ARGV[0]

# Regular expression pattern
pattern = /Scho*l/

# Check if the input string matches the pattern
if input_string.match?(pattern)
  puts "The input string matches the pattern."
else
  puts "The input string does not match the pattern."
end
