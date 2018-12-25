# [問題]
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?
# 6番目の素数は 13 です。
# 10,001番目の素数はなんですか？

def prime_number?(target, known_prime_numbers)
  known_prime_numbers.sort.each do |prime_number|
    return false if target % prime_number == 0
  end

  true
end

known_prime_numbers = []
target = 2

while(known_prime_numbers.size < 10_001)
  known_prime_numbers << target if prime_number?(target, known_prime_numbers)
  target += 1
end

puts "10_001st prime number: #{known_prime_numbers.last}"
