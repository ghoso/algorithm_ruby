#
# List
#
# Created 2012/NOV/25
# Go Hosohara  go.hosohara@gmail.com
#

class MyListEntry
  attr_reader: data
  attr_writer: data

  # Previous link list entry
  @prev_entry = nil
  # Next link list entry
  @next_entry = nil
  # Data(Integer)
  @data = nil

  def initialize(data_info)
    @data = data_info
  end

  # Append after new_list entry
  def append(new_entry)
    tmp_entry = nil
    tmp_entry = self.next_entry if self.next_entry
    self.next_entry = new_entry
    new_list.prev_entry = self
    if tmp_entry
      new_list.next_entry = tmp_entry
      self.next_entry.prev_entry = new_entry
    end
  end

  # Prepend before new_list entry
  def prepend(new_entry)
    tmp_entry = nil
    tmp_entry = self.prev_entry if self.prev_entry
    self.prev_list = new_entry
    new_entry.next_entry = self
    if tmp_entry
      new_entry.prev_entry = tmp_entry
      self.prev_entry.next_entry = new_entry      
    end
  end

  def delete

  end
end

#main
