#
# Merge sort
#
# Created 2012/NOV/8
# Go Hosohara  go.hosohara@gmail.com
#

# Number of integer you will sort
Repeat = 100
# Sort data
$g_sort = []

#
# Merge sort
#
# Parameter: num int number of array
#            offset int offset of sub array
def merge_sort(num,offset)
  return if num <= 1

  m = num/2
  # Divide numbers
  merge_sort(m,offset)
  merge_sort(num-m,offset + m)

  # Merge
  buffer = []
  i = 0
  while i < m
    buffer[i] = $g_sort[i+offset]
    i += 1
  end
  j = m
  i = k = 0
  while i < m && j < num
    if buffer[i] <= $g_sort[j+offset]
      $g_sort[k+offset] = buffer[i]
      k += 1
      i += 1
    else
      $g_sort[k+offset] = $g_sort[j+offset]
      k += 1
      j += 1
    end
  end
  while i < m
    $g_sort[k+offset] = buffer[i]
    k += 1
    i += 1
  end
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
merge_sort(Repeat,0)
puts "Sort end"

# Show sorted data
p $g_sort.join(" ")
