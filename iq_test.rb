# Bob is preparing to pass IQ test. The most frequent task in this test is to find
# out which one of the given numbers differs from the others. Bob observed that one
# number usually differs from the others in evenness. Help Bob — to check his answers,
# he needs a program that among the given numbers finds one that is different in
# evenness, and return a position of this number.
#
# ! Keep in mind that your task is to help Bob solve a real IQ test, which means
# indexes of the elements start from 1 (not 0)
#
# ##Examples :
#
# iq_test("2 4 7 8 10") => 3 // Third number is odd, while the rest of the numbers
# are even
#
# iq_test("1 2 1 1") => 2 // Second number is even, while the rest of the numbers
# are odd


def iq_test(numbers) # => "2 4 7 8 10"
  numbers_arr = numbers.split.map(&:to_i)
  #numbers_arr => [2, 4, 7, 8, 10]

  odds, evens = numbers_arr.partition { |n| n.odd? } #
  # odds [7]
  # evens [2, 4, 8, 10]

  num = odds.size < evens.size ? odds.first : evens.first
  # num => 7

  numbers_arr.find_index(num).succ # => 3
end

p iq_test("2 4 7 8 10")
p iq_test("2 6 10 11 12")
p iq_test("2 3 4")

=begin
MY SLUSH
def iq_test(numbers) # => "2 4 7 8 10"
  numbers_arr = numbers.split.map(&:to_i)
  #numbers_arr => [2, 4, 7, 8, 10]

  odds, evens = numbers_arr.partition { |n| n.odd? } #
  # odds [7]
  # evens [2, 4, 8, 10]

  num = odds.size < evens.size ? odds.first : evens.first
  # num => 7

  numbers_arr.find_index(7).succ # => 3
end
=end
