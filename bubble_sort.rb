#
# Bubble sort
#
# Created 2012/NOV/4
# Go Hosohara  go.hosohara@gmail.com
#

# Number of integer you will sort
Repeat = 100

#Bubble sort
def bubble_sort(num_list)
  begin
    flag = 0
    i = 0
    while i < Repeat-1 do
      if num_list[i] > num_list[i+1]
        flag = 1
        j = num_list[i]
        num_list[i] = num_list[i+1]
        num_list[i+1] = j
      end
      i += 1
    end
  end while flag == 1
  return num_list
end

#main
sort = []
# Creat data
puts "Sort preparing..."
1.upto(Repeat){
  sort << rand(Repeat*10)
}
p sort.join(" ")

puts "Sort begin"
sorted = bubble_sort(sort)
puts "Sort end"

# Show sorted data
p sorted.join(" ")
