#!/usr/bin/env ruby

a, b, x = gets.chomp.split.map(&:to_i)

=begin
a <= y <= b な y で x で割り切れるものの個数
=end

# TLE
# ans = 0
# a.upto(b) do |num|
#   if num % x == 0
#     ans += 1
#   end
# end
# puts ans

=begin
https://img.atcoder.jp/arc064/editorial.pdf
a 以上 b 以下の整数のうち条件を満たすものの個数を求める問題です．このような問題では，
f(n) := 0 以上 n 以下の整数のうち条件を満たすものの個数
と定義しておくと，答えは f(b) − f(a − 1) で求まるので楽です．ただし，a = 0 のときに f(−1) が呼ばれる
ことに注意してください．このことに注意すると，f は次のように書けます．
f(n) = {
  n/x + 1 (n ≥ 0)
  0 (n = −1)
}
ただし，/ は切り捨ての除算です  
=end

def func(n, x)
  return 0 if n < 0
  n / x + 1
end

_b = func(b, x)
_a = func(a - 1, x)

puts _b - _a
