#
# List
#
# Created 2012/NOV/25
# Go Hosohara  go.hosohara@gmail.com
#

class MyList
  attr_reader: data
  attr_writer: data

  # Previous link list entry
  @prev_list = nil
  # Next link list entry
  @next_list = nil
  # Data(Integer)
  @data = nil

  def initialize(data_info)
    @data = data_info
  end

  def append(new_list)
    
  end

  def prepend(new_list)

  end

  def delete

  end

end
