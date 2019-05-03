=begin
A digital root is the recursive sum of all the digits in a number. Given n, take
the sum of the digits of n. If that value has more than one digit, continue reducing
in this way until a single-digit number is produced. This is only applicable to
the natural numbers.

Here's how it works:

digital_root(16)
=> 1 + 6
=> 7

digital_root(942)
=> 9 + 4 + 2
=> 15 ...
=> 1 + 5
=> 6

digital_root(132189)
=> 1 + 3 + 2 + 1 + 8 + 9
=> 24 ...
=> 2 + 4
=> 6

digital_root(493193)
=> 4 + 9 + 3 + 1 + 9 + 3
=> 29 ...
=> 2 + 9
=> 11 ...
=> 1 + 1
=> 2
=end



def digital_root(n) #  456

  # break condition n.to_s.size == 1
  return n if n.to_s.size == 1

  # make n into arr of digits [4, 5, 6]
  digits_arr = n.to_s.chars.map(&:to_i) #  [4, 5, 6]

  # #sum => 15
  n = digits_arr.sum #  15

  # recursive
  digital_root(n)

end

p digital_root(456) == 6
p digital_root(169) == 7
