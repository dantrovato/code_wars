# Complete the solution so that it splits the string into pairs of two characters.
# If the string contains an odd number of characters then it should replace the missing
# second character of the final pair with an underscore ('_').
#
# Examples:

# MY SLUSH
# def solution(str) #  => "abc"
#   result = []
#   str_arr = str.chars # => ['a', 'b', 'c']
#   counter_1 = 0
#   counter_2 = 1
#
#   str_arr.each do |str|
#     if counter_2 < str_arr.size
#       result << (str_arr[counter_1] + str_arr[counter_2])
#       counter_1 += 2
#       counter_2 += 2
#     end
#   end
#
#   result << (str_arr.last + '_') if str_arr.size.odd?
#   result
#
# end

# BETTER SLUSH

def solution(str)
  (str + '_').scan /../
end

p solution('abc') # should return ['ab', 'c_']
p solution('abcdef') # should return ['ab', 'cd', 'ef']
