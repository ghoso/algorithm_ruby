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

  def append(new_list)
    tmp_entry = nil
    tmp_entry = self.next_list if self.next_list
    self.next_list = new_list
    new_list.prev_entry = self
    new_list.next_entry = tmp_entry if tmp_entry
  end

  def prepend(new_list)

  end

  def delete

  end
end

#main
