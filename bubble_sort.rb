# Set n to the number of items in the array.
# Repeat the following n times.
#  for each item in turn, except the last one
#    if the item is bigger than the next one
#      swap the two items
#    //end if
#  //end for
# //end repeat
# //end bubble sort algorithm

class SortableArray

  attr_reader :array

  def initialize(array)
    @array = array
  end

  def bubble_sort
    number_of_items_in_array.times do
      for_each_item_except_the_last_one_in_the_array do |item|
        if item_is_bigger_than_the_next_one_in_the_array(index)
          swap_the_two_items(index)
        end
      end
    end
  end

  private

  def number_of_itmes_in_array
    @array.count
  end

  def for_each_item_except_the_last_one_in_the_array
    @array[0..-2].each do |item|
      yield item
    end
  end

  def item_is_bigger_than_the_next_one_in_the_array(index)
    @array[index] > @array[index + 1]
  end

  def swap_the_two_items(index)
    temp = @array[index]
    @array[index] = array[index + 1]
    @array[index + 1] = temp
  end

end

array = SortableArray.new([4,3,0,2,1])
array.bubble_sort
puts array.array
