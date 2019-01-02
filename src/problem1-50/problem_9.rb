# [問題]
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a^2 + b^2 = c^2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
# ピタゴラスの定理では、３辺が a, b, c で直角が含まれている三角形の場合。 a < b < c であれば、
# a^2 + b^2 = C^2 となる。
# このピタゴラスの定理に該当する3辺の中で、その合計が 1000となる三辺は何？

def pytagorean?(a, b, c)
  (a + b) == c
end

def search
  (1..998).each do |a|
    double_a = a ** 2
    (a+1..999).each do |b|
      double_b = b ** 2
      (a+2..1000).each do |c|
        if a + b + c == 1000 && pytagorean?(double_a, double_b, c ** 2)
          return { a: a, b: b, c: c }
        end
      end
    end
  end
end

puts search
