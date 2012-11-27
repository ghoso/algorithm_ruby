#
# MyListEntry
#
# Link list 
#
# Created 2012/NOV/25
# Go Hosohara  go.hosohara@gmail.com
#

class MyListEntry
  attr_reader :data
  attr_writer :data
  attr_reader :next
  attr_writer :next
  attr_reader :prev
  attr_writer :prev
  
  # Previous link list entry
  @prev = nil
  # Next link list entry
  @next = nil
  # Data(Integer)
  @data = nil

  def initialize(data_info)
    @data = data_info
  end

  # Append after new_list entry
  def append(new_entry)
    tmp_entry = nil
    tmp_entry = self.next if self.next
    self.next = new_entry
    new_entry.prev = self
    if tmp_entry
      new_entry.next = tmp_entry
      self.next.prev = new_entry
    end
  end

  # Prepend before new_list entry
  def prepend(new_entry)
    tmp_entry = nil
    tmp_entry = self.prev if self.prev
    self.prev = new_entry
    new_entry.next = self
    if tmp_entry
      new_entry.prev = tmp_entry
      self.prev.next = new_entry      
    end
  end

  def delete
    prev_list = self.prev
    next_list = self.next
    prev_list.next = next_list
    next_list.prev = prev_list
  end
end

#
#main
#
a = [1,2,3,4,5]
prev_entry = nil
top_entry = nil
first_flag = false

#
# Append test
#
a.each{|num|
  link_entry = MyListEntry.new(num)
  top_entry = link_entry unless first_flag
  first_flag = true
  if prev_entry
    prev_entry.append(link_entry)
  end
  prev_entry = link_entry
}

entry = top_entry
puts "Append"
while(entry)
  puts "Data = " + entry.data.to_s
  entry = entry.next
end

#
# Prepend test
#
prev_entry = nil
a.each{|num|
  link_entry = MyListEntry.new(num)
  first_flag = true
  if prev_entry
    prev_entry.prepend(link_entry)
  end
  prev_entry = link_entry
}

entry = prev_entry
puts "Prepend"
while(entry)
  puts "Data = " + entry.data.to_s
  entry = entry.next
end


#
# Delete test
#
entry = top_entry
puts "Before Delete"
while(entry)
  puts "Data = " + entry.data.to_s
  entry = entry.next
end

entry = top_entry
entry = entry.next
entry = entry.next

puts "Delete entry 3"
entry.delete

entry = top_entry
puts "After Deelete"
while(entry)
  puts "Data = " + entry.data.to_s
  entry = entry.next
end
