# catherine's slush

# def letter_changes(str)
#   alpha_down = ('a'..'z').to_a
#   alpha_up = ('A'..'Z').to_a
#
#   str.chars.map do |char|
#     case char
#     when /[a-z]/ then alpha_down[(alpha_down.index(char) + 3)]
#     when /[A-Z]/ then alpha_up[(alpha_up.index(char) + 3)]
#     else              char
#     end
#   end.join
# end


# this one doesn't separate capitals from small letters but i like how it creates the hash
arr = ('A'..'Z').to_a.concat(('a'..'z').to_a)
HASH = arr.zip(arr.rotate(3)).to_h

def letter_changes(str) # => 'Axrj*Z&'
  result_str = ""
  chars_array = str.chars # => ['A', 'x', 'r', 'j', '*', 'Z', '&']
  chars_array.each do |chr|
    if chr =~ /[A-Za-z]/
      result_str << HASH[chr]
    else
      result_str << chr
    end
  end
  result_str
end

# fixing the z problem
def letter_changes(str)
  array = str.chars

  3.times do
    array.each_with_index do |chr, index|
      array[index] = chr.succ if chr =~ /[A-Ya-y]/
    end
  end
  new_str = array.join
  new_str.gsub!('z', 'c')
  new_str.gsub!('Z', 'C')
end


















p letter_changes('Axrj*Z&') == 'DAum*C&'
