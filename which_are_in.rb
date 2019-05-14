# Given two arrays of strings a1 and a2 return a sorted array r in lexicographical order of the strings of a1 which are substrings of strings of a2.
#
# #Example 1: a1 = ["arp", "live", "strong"]
#
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
#
# returns ["arp", "live", "strong"]
#
# #Example 2: a1 = ["tarp", "mice", "bull"]
#
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
#
# returns []
#
# Notes:
# Arrays are written in "general" notation. See "Your Test Cases" for examples in your language.
#
# In Shell bash a1 and a2 are strings. The return is a string where words are separated by commas.
#
# Beware: r must be without duplicates.
# Don't mutate the inputs.

=begin
- don't modify original arrays
- return array.uniq!
output: 1 sorted array of strings of array1 which are substrings of array 2

hi lev
- make copy of array1.sort => copy1 = array1.sort # => ["arp", "live", "strong"]
- result = a2.sort.select do |word|

  end
=end

a1 = ["arp", "live", "strong"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

def in_array(array1, array2)
  copy1 = array1.sort # => ["arp", "live", "strong"]
  copy2 = array2.sort # => ["alive", "armstrong", "harp", "lively", "sharp"]

  result = []
  copy2.each do |word| # => ["alive", "armstrong", "harp", "lively", "sharp"]

    copy1.each do |copy_word| # => ["arp", "live", "strong"]

      if word.include?(copy_word)
        result << copy_word
      end

    end # => []
  end # => []

  result.uniq.sort
end

p in_array(a1, a2) == ["arp", "live", "strong"]
a1 = ["tarp", "mice", "bull"]
p in_array(a1, a2) == []
