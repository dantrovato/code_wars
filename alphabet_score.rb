# Given a string of words, you need to find the highest scoring word.

# Each letter of a word scores points according to it's position in the alphabet:
# a = 1, b = 2, c = 3 etc.

# You need to return the highest scoring word as a string.

# If two words score the same, return the word that appears earliest in the original
#string.

# All letters will be lowercase and all inputs will be valid.

=begin

====================
OTHER'S SLUSH

CHAR_VALUES = ('a'..'z').to_a.zip((1..26).to_a).to_h.freeze

def alphabet_score(string)
  words = string.split
  word_value = Hash.new(0)

  words.each do |word|
    word_value_array =
    word.chars.map.each do |
      CHAR_VALUES[char]
    end

    word_value[word] = word_value_array.inject(:+)
  end

  max_value = word_value.values.max
  word_value.key(max_value)
end
============================

input: string
req:
  - array of letters. index + 1 is the value
output: string; the highest scoring word
- If two words score the same, return the word that appears earliest in the original
#string.

sudo:
- LETTERS array ['a', 'b', 'c'...]
- initialize a score keeper; highest = 0
- array of highest words = []
- make arr of strings => ['man', 'i', 'need'...]
- iterate over array of strings
  - |word| word.chars => ['m', 'a', 'n']
- find the score for each word
  - find the index of LETTERS['M'] + 1
  - word_count = 0

  - check if the word total is > highest
    - highest = word total
    array of highest << word
    array of highest.last

=end

LETTERS = ('a'..'z').to_a

def alphabet_score(string)
  highest = 0
  words = [] 
  strings_array = string.split(' ') 

  strings_array.each do |word| 
    word_characters = word.chars 
    word_tally = 0 

     word_characters.each do |letter| 
       word_tally += LETTERS.find_index(letter) + 1 
    end

    if word_tally > highest
      words << word
      highest = word_tally
    end
    word_tally
  end
  words.last
end
#alphabet_score('we climbing volcano')
p alphabet_score('man i need a taxi up to ubud') == 'taxi'
p alphabet_score('what time are we climbing up the volcano') == 'volcano'
p alphabet_score('take me to semynak') == 'semynak'
p alphabet_score('aa b') == 'aa'
