#
# Quick sort
#
# Created 2012/NOV/5
# Go Hosohara  go.hosohara@gmail.com
#

# Number of integer you will sort
Repeat = 100
# Sort data
$g_sort = []

#
#Quick sort
#
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

#
#Main
#

# Create data
puts "Sort preparing..."
1.upto(Repeat){
  $g_sort << rand(Repeat*10)
}
p $g_sort.join(" ")

puts "Sort begin"
quick_sort(0,Repeat-1)
puts "Sort end"

# Show sorted data
p $g_sort.join(" ")
