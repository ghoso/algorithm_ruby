#
# Binary search
#
# Created 2012/NOV/22
# Go Hosohara  go.hosohara@gmail.com
#

# Number of integer you will search
Repeat = 100
# Sorted array
$g_sort = []

# Quick sort
def quick_sort(bottom,top)
  return if bottom >= top
  # Select first value as sort base value
  div = $g_sort[bottom]
  upper = top
  lower = bottom
  while lower < upper do
    while lower <= upper && $g_sort[lower] <= div do
      lower += 1
    end
    while lower <= upper && $g_sort[upper] > div do
      upper -= 1
    end
    if lower < upper
      tmp = $g_sort[lower]
      $g_sort[lower] = $g_sort[upper]
      $g_sort[upper] = tmp
    end
  end
  # Move selected value to center
  tmp = $g_sort[bottom]
  $g_sort[bottom] = $g_sort[upper]
  $g_sort[upper] = tmp

  quick_sort(bottom,upper - 1)
  quick_sort(upper + 1,top)
end

# Binary Search
def binary_search(search,array)
  left = 0
  right = array.size - 1
  while left <= right
    mid = (left + right)/2
    if array[mid] == search
      return mid
    end
    if array[mid] < search
      left = mid + 1
    else
      right = mid - 1
    end
  end
  return nil
end

#main

# Creat data
puts "Search preparing..."
1.upto(Repeat){
  $g_sort << rand(Repeat*10)
}
# Sort data
quick_sort(0,Repeat-1)
puts $g_sort.join(" ")
# Input search number
print "Input number to search: "
s = gets.to_i
# Seaching
searched_nth = binary_search(s,$g_sort)
if searched_nth
  puts s.to_s + " is found at position " + (searched_nth+1).to_s + " !"
else
  puts "Can't find " + s.to_s + "."
end
