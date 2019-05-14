# In this kata you are required to, given a string, replace every letter with its
# position in the alphabet.
#
# If anything in the text isn't a letter, ignore it and don't return it.
#
# "a" = 1, "b" = 2, etc.
#
# Example
# alphabet_position("The sunset sets at twelve o' clock.")
# Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12
# 15 3 11" (as a string)

=begin
input: string - letters or non letters or both
req:
  - only letters must be returned.
  - case insensitive
  -
output: string of numbers or empty

hi lev
  - array of all letters
  - return string ""
  - make text lowercase
  - make text array of chars
  - iterate through array of chars
    - find_index and send result into return string
  - return string

=end
LETTERS = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

def alphabet_position(text)
  result = ""
  text.downcase!
  text.chars.each do |chr|
    if LETTERS.include?(chr)
      result << (LETTERS.find_index(chr) + 1).to_s << ' '
    end

  end
  result.chop
end

p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
p alphabet_position("-.-'") == ""
