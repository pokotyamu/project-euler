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
