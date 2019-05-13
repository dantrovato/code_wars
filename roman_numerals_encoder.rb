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
  roman = []
  index = 0
  loop do
    break if number <= 0
    if number >= ARRAY_VALUES[index]
      roman << VALUES.select { |k, v| v.include?(ARRAY_VALUES[index])}.values[0].last
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
  p old_roman
  old_roman.each { |letter| result << letter }

  result.gsub!(/DCCCC/, 'CM')
  result.gsub!(/MCCCC/, 'MCD')
  result.gsub!(/MXXXX/, 'MXL')
  result.gsub!(/DXXXX/, 'DXL')
  result.gsub!(/MXXXX/, 'MXL')
  result.gsub!(/LXXXX/, 'XC')
  result.gsub!(/CXXXX/, 'CXL')
  result.gsub!(/VIIII/, 'IX')
  result.gsub!(/XIIII/, 'XIV')
  result.gsub!(/IIII/, 'IV')
  result.gsub!(/XIIII/, 'XIV')
  result.gsub!(/CCCC/, 'CD')
  result
end

p solution(91) == 'XCI'
p solution(984) == 'CMLXXXIV'
p solution(1000) ==  'M'
p solution(1889) == 'MDCCCLXXXIX'
p solution(1989) == 'MCMLXXXIX'
p solution(4) == 'IV'
p solution(6) == 'VI'

=begin
BEST SLUSH FROM CODEWARS;

NUMERALS = { M: 1000, CM: 900, D: 500, CD: 400, C: 100, XC: 90,
               L: 50, XL: 40, X: 10, IX: 9, V: 5, IV: 4, I: 1 }

def solution(number)
  return '' if number <= 0
  NUMERALS.each { |key, val| return key.to_s + solution(number - val) if number >= val }
end
=end
