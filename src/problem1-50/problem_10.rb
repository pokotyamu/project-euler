# [問題]
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.
# 10 より小さい素数の合計は 17
# 2,000,000 より小さい素数の合計は何でしょう？

results = []

(2..2_000_000).each do |num|
  sqrted_num = Math.sqrt(num).to_i
  below_primes = results.select { |r| r <= sqrted_num }

  unless below_primes.find_index { |prime| num % prime == 0 }
    results << num
  end
end

puts "SUM: #{results.sum}"
