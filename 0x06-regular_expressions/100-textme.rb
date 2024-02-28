#!/usr/bin/env ruby
#  regular expression match `School`

# Check if an argument is provided
if ARGV.empty?
  exit 1
end

# Get the argument
log = ARGV[0]

# Regular expression pattern
sender = log.match(/(?<=\[from:)(.*?)(?=\])/)
receiver = log.match(/(?<=\[to:)(.*?)(?=\])/)
flags = log.match(/(?<=\[flags:)(.*?)(?=\])/)

# Output the extracted information
puts "#{sender},#{receiver},#{flags || ''}"
