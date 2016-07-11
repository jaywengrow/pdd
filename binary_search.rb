# def binary_search(value_were_looking_for, array, beginning_point, end_point)
#   if subarray_has_only_one_element # base case
#     if element == value_were_looking_for
#       return index_of_element 
#     else
#       return nil
#     end
#   else
#     check_midpoint_of_subarray
#     if element_at_midpoint > value_were_looking_for
#       binary_search(lower_half)
#     elsif element_at_midpoint < value_were_looking_for
#       binary_search(greater_half)
#     else
#       return index_of_midpoint
#     end
#   end
# end

def binary_search(value_were_looking_for, array, beginning_index, end_index)
  if subarray_has_only_one_element(beginning_index, end_index) # base case
    if array[beginning_index] == value_were_looking_for
      return beginning_index 
    else
      return nil
    end
  else
    index_of_midpoint = check_midpoint_of_subarray(beginning_index, end_index)
    if array[index_of_midpoint] == value_were_looking_for
      return index_of_midpoint
    elsif array[index_of_midpoint] > value_were_looking_for
      binary_search(value_were_looking_for, array, beginning_index, index_of_midpoint - 1)
    elsif array[index_of_midpoint] < value_were_looking_for
      binary_search(value_were_looking_for, array, index_of_midpoint + 1, end_index)
    end
  end
end

def subarray_has_only_one_element(beginning_index, end_index)
  beginning_index >= end_index
end

def check_midpoint_of_subarray(beginning_index, end_index)
  beginning_index + ((end_index - beginning_index) / 2)
end

array = [1, 4, 6, 8, 11, 16, 29, 33, 44, 56, 83]
p binary_search(4, array, 0, array.length - 1)