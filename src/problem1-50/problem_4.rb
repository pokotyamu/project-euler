# [問題]
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.
# パリンドミック数(回文)とはどちらの方向から読んでも同じ数字のことです。
# ２桁同士の掛け算で最も大きいパリンドミック数は 9009(91 x 99) です。
# ３桁同士の掛け算で最も大きいパリンドミック数はなんでしょう？

# NOTE: パリンドミック数かどうかの判定
def palindromic?(num)
  num.to_s == num.to_s.reverse
end

def max_palindromic_number(digit)
  start_num = ('9' * digit).to_i
  end_num = ('1' + ('0' * (digit - 1))).to_i
  max_palindromic = 0

  start_num.downto(end_num) do |x|
    (x - 1).downto(end_num) do |y|
      multiplied_result = x * y
      # NOTE: 最大の数をかけて、それまでの MAX より小さいならその後の計算は不要
      break if max_palindromic > multiplied_result
      if palindromic?(multiplied_result) && max_palindromic < multiplied_result
        max_palindromic = multiplied_result
      end
    end
  end
  max_palindromic
end

puts max_palindromic_number(3)
#=> 906609
