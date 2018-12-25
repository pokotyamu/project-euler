# [問題]
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# 1~10 の全ての数で割り切れる最小の値は、 2520 です。
# 1~20 の全ての数で割り切れる最小の値は、なんでしょう？

def minimum(num1, num2)
  divisible_nums = []
  i = 2
  while(i < num1 || i < num2)
    if num1 % i == 0 && num2 % i == 0
      divisible_nums << i
      num1 /= i
      num2 /= i
      i = 2
    else
      i += 1
    end
  end

  (divisible_nums.inject(:*) || 1) * num1 * num2
end

answer = 1
(11..20).each do |i|
  answer = minimum(i, answer)
end

puts answer
#=> 232792560
