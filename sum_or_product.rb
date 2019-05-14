# write a program that asks a user to enter an integre greater than 0 , then
#   asks if the user wants to get the sum or product of all numbers from 1 to
#   entered integer.

=begin
- ask user for a number greater than 0
- store it
- ask the user if he wants to sum or multiply all numbers from 1 to stored number
- store answer
- make array of all numbers
- sum or multiply accordingly
- return result
=end

def prompt(msg)
  puts "=> #{msg}"
end

prompt("Enter integer greater than 0")
number = gets.chomp.to_i
prompt("Would you like to either multiply or sum all numbers between 1 and #{number.to_s}?
  ('s') for sum or (m) for multiply.")
operation = gets.chomp

array = 1.upto(number).to_a
if operation == 's'
  p array.sum
else

  p array[0..-2].reduce(:*)
end
