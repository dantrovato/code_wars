
def first_non_repeating_letter(str)
  str.chars.each do |chr|
    str.delete(chr) if str.count(chr.downcase) == 1
  end
  str[0]
end



def first_non_repeating_letter(str)
  arr = str.chars
  result = []

  arr.each do |char|
    result << char if str.downcase.count(char.downcase) == 1
  end
  result[0] || ''
end

p first_non_repeating_letter('a') #== 'a'
p first_non_repeating_letter('sTreSS') #== 'T'
p first_non_repeating_letter('moonmen') #== 'e'
p first_non_repeating_letter('aabbcc') #== ''
p first_non_repeating_letter('') #==
