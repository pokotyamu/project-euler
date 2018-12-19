# [問題]
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
# 3または5の倍数である10より小さい自然数をすべて列挙すると、3,5,6,9が得られます。これらの倍数の合計は23です。
# 1000より小さいの3または5の倍数の合計はなんですか？

result = 0

(1...1000).each do |num|
  result += num if num % 3 == 0 || num % 5 == 0
end

puts result
