# write a method that will take an array of numbers and only returns the prime ones
=begin
input: array

output: array of prime numbers extracted from input array
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

def select_primes(array)
  array.select { |num| is_prime?(num) }

end

p select_primes([1, 2, 3, 4]) # => [2, 3]
p select_primes([4, 6, 8, 10]) # => []
