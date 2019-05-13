# Create a function taking a positive integer as its parameter and returning a
# string containing the Roman Numeral representation of that integer.
#
# Modern Roman numerals are written by expressing each digit separately starting
# with the left most digit and skipping any digit with a value of zero. In Roman
# numerals 1990 is rendered: 1000=M, 900=CM, 90=XC; resulting in MCMXC. 2008 is
# written as 2000=MM, 8=VIII; or MMVIII. 1666 uses each Roman symbol in descending
# order: MDCLXVI.
#
# Example:
#
# solution(1000) # should return 'M'
# Help:
#
# Symbol    Value
# I          1
# V          5
# X          10
# L          50
# C          100
# D          500
# M          1,000

require 'pry'
require 'pry-byebug'

I = 1
V = 5
X = 10
L = 50
C = 100
D = 500
M = 1000

VALUES = {M => [1000, 'M'], D => [500, 'D'], C => [100, 'C'], L => [50, 'L'],
          X => [10, 'X'], V => [5, 'V'], I => [1, 'I'],}
ARRAY_VALUES = [M, D, C, L, X, V, I]


def get_old_romans(number)
  roman = [] #
  index = 0 # 1
  loop do
    #         984
    break if number <= 0
    # =>                       1, D
    if number >= ARRAY_VALUES[index] # 500
      roman << VALUES.select { |k, v| v.include?(ARRAY_VALUES[index])}.values[0].last # D
      number -= ARRAY_VALUES[index]
    else
      index += 1
    end
  end
  roman
end

def solution(number)
  result = ""
  old_roman = get_old_romans(number)
  old_roman.each { |letter| result << letter }
  result.gsub!(/DCCCC/, 'CM')
  result.gsub!(/MCCCC/, 'MCD')

  result.gsub!(/LXXXX/, 'XC')
  result.gsub!(/CXXXX/, 'CXL')

  result.gsub!(/VIIII/, 'IX')
  result.gsub!(/XIIII/, 'XIV')
  result

end

p solution(91) == 'XCI'
p solution(984) == 'CMLXXXIV'
p solution(1000) ==  'M'
p solution(1889) == 'MDCCCLXXXIX'
p solution(1989) == 'MCMLXXXIX'

=begin
input: positive number
req:
  - letters go from greater on the left to smaller on the right
  - if the letter to the left is < letter on the right then subtract smaller (left letter)
    from bigger (right letter)
output: string

hi lev:
  - map letters to numbers (already done above)
  - perhaps make an array of variables [m, d, c, l, x, v, i]
  - roman = ""
  - iterate thru array
    - if number >= element add el.upcase to roman and subtract el from number
    - need to take into account the rule that if letter on left is smaller than
      letter on right...
  - loop through whole array each time
  - break when number <= 0
  - index = 0
  - check if number >= 0
    - if it is increase index and subtract value from number

  - refactor DCCCCLXXX1111 => CMLXXXIV
  - if a letter appears four times refactor
      - take letter, append previous letter squeeze(letter) ?
    else return letter

- hi lev
  - result = ""
  - array.each_with_index => [DCCCCLXXX1111]
    - if array.count(letter) == 4
      - result << letter
      - array.squeeze(letter)
      - result << array[array.index(letter)]

=end
