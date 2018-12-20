# [問題]
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?
# 13195 の素因数は 5, 7, 13, 29 です。
# では 600851475143 の素因数の中で最大のものはなんですか？

max_factor = 0

target = 600851475143

(2..600851475143).each do |num|
  break if target < num
  if target % num == 0
    max_factor = num
    target = target / num
  end
end

puts max_factor
# => 6857
