# https://atcoder.jp/contests/abc048/tasks/abc048_b

a, b, x = gets.chomp.split.map(&:to_i)

=begin
a, b (a <= b), x >= 1
a 以上 b 以下の整数のうち、x で割り切れるものの個数
=end

ans = x == 1 ? 1 : 0
(b - a).times do |offset|
  if (a + offset) % x == 0
    ans += 1
  end
end

p ans
