def prime_number?(target, known_prime_numbers)
  known_prime_numbers.sort.each do |prime_number|
    target % prime_number == 0
  end
end
