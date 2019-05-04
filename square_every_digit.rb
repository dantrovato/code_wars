=begin THIS SHOWS MY NEW METHOD BEFORE THE FIRST LIVE ASSESSMENT
Welcome. In this kata, you are asked to square every digit of a number.

For example, if we run 9119 through the function, 811181 will come out, because
92 is 81 and 12 is 1.

Note: The function accepts an integer and returns an integer


def square_digits num # 3212
  digits_arr = num.to_s.chars.map(&:to_i)
  # => [3, 2, 1, 2]

  squares_arr = digits_arr.map { |n| n * n }
  # => [9, 4, 1, 4]

  strings_arr = squares_arr.map(&:to_s)
  # => ["9", "4", "1", "4"]

  p string = strings_arr.join
  # => "9414"

  number = string.to_i
  # => 9414
end

COULD REFACTOR LIKE SO:
def square_digits num # 3212
  num.to_s.chars.map(&:to_i).map { |n| n * n }.map(&:to_s).join.to_i
end

if you really wanted to be a bastard
=end
