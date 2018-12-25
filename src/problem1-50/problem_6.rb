# [問題]
# The sum of the squares of the first ten natural numbers is,
# 1^2 + 2^2 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)^2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

min = ARGV[0].to_i
max = ARGV[1].to_i

def sum_of_square(range)
  sum = 0
  range.each do |num|
    sum += num ** 2
  end

  sum
end

def square_of_sum(range)
  ((range.first + range.last) * range.size / 2) ** 2
end


range = min..max
puts square_of_sum(range)
puts sum_of_square(range)

diff = square_of_sum(range) - sum_of_square(range)

puts "diff: #{diff}"
