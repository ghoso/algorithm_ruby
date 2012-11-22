#
# Linear search
#
# Created 2012/NOV/22
# Go Hosohara  go.hosohara@gmail.com
#

# Number of integer you will search
Repeat = 100

def linear_search(search_num,array)
  array.each{|a|
    if a == search_num
      return a
    end
  }
  return nil
end

#main
search = []
# Creat data
puts "Search preparing..."
1.upto(Repeat){
  search << rand(Repeat*10)
}
p search.join(" ")

print "Input number to search: "
s = gets.to_i
searched = linear_search(s,search)
if searched
  puts searched.to_s + " found !"
else
  puts "Can't find " + s.to_s + "."
end
