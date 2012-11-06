#
# Sort by ruby array
#
# Created 2012/NOV/6
# Go Hosohara  go.hosohara@gmail.com
#

# Number of integer you will sort
Repeat = 100
# Sort array
s_array = []

# Create data
puts "Sort preparing..."
1.upto(Repeat){
  s_array << rand(Repeat*10)
}
p s_array.join(" ")

puts "Sort begin"
s_array.sort!
puts "Sort end"

# Show sorted data
p s_array.join(" ")
