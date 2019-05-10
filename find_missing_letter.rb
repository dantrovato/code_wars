#Find the missing letter

# Write a method that takes an array of consecutive (increasing) letters as input
# and that returns the missing letter in the array.
#
# You will always get an valid array. And it will be always exactly one letter
# missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.
#
# Example:

# CRAIG'S SLUSH
# def find_missing_letter(array)
#
#   counter = 1
#
#   array.each do |letter|
#     if letter.succ == array[counter]
#       counter += 1
#       next
#     else
#       return letter.succ
#     end
#   end
# end


p find_missing_letter(['a','b','c','d','f']) # -> 'e'
p find_missing_letter(['O','Q','R','S']) # -> 'P'














=begin
MY SLUSH

def find_missing_letter(arr) # => ["a","b","c","d","f"]
  ord_arr = arr.map(&:ord) # => [97, 98, 99, 100, 102]
  # p ord_arr
  #                             97   0
  ord_arr.each_with_index do |el, index|
  #            98        98
    next if el + 1 == ord_arr[index + 1]
    #binding.pry
    return (el + 1).chr
  end
end # => "c"

=end
