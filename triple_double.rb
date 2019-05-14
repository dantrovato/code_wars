# Write a function
#
# triple_double(num1, num2)
# which takes numbers num1 and num2 and returns 1 if there is a straight
# triple of a number at any place in num1 and also a straight double of the same
# number in num2.
#
# If this isn't the case, return 0
#
# Examples
# triple_double(451999277, 41177722899) == 1
# # num1 has straight triple 999s and  num2 has straight double 99s
#
# triple_double(1222345, 12345) == 0
# # num1 has straight triple 2s but num2 has only a single 2
#
# triple_double(12345, 12345) == 0
#
# triple_double(666789, 12345667) == 1

=begin
input: two numbers
req:
  - if there are 3 consecutive digits in num1 and two on num2 return 1
    - else return 0
output: either 1 or 0

hi lev
  - make numbers into strings "451999..."
  - use regex to see if there are two matches
    - arr1.  "Ruby".match?(/R.../)    #=> true
  - return 1 or two accordingly
=end

def triple_double(num1, num2)
  str1 = num1.to_s
  str2 = num2.to_s
  str1.match?(/(.)\1\1/) && str2.match?(/(.)\1/) ? 1 : 0
end

p triple_double(451999277, 41177722899) == 1
p triple_double(1222345, 12345) == 0
p triple_double(12345, 12345) == 0
p triple_double(666789, 12345667) == 1
p triple_double(10560002, 100) == 1
p triple_double(1112, 122) == 1
