# write a method that will determine whether an integer is a prime

=begin
input: integer
req:
  - num must only be divisible by 1 and itself
  - numbers can't be prime if they are less than two
output: boolean

hi lev num = (4)
  - return false if num < 2
  - array of numbers from 2 to num - 1 => [2, 3, 4, 5, 6, 7]
  - iterate over array
    - if any iteration returns true to the expression num % el == 0
      - then false
    - else true
=end

def is_prime?(num)
  return false if num < 2
  2.upto(num - 1) do |el|
    if num % el == 0
      return false
    end
  end
  true
end

p is_prime?(3)
p is_prime?(8)
p is_prime?(17)
p is_prime?(337)
p is_prime?(49)
