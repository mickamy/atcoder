# https://atcoder.jp/contests/abc139/tasks/abc139_d

N = gets.chomp.to_i

=begin
Mi = i % Pi
M1 + M2 + ... + Mi の最大値

各値について mod の最大値を取れるようになれば良さそう
mod の最大値を取るには、割られる数 + 1 で割ってやれば良い
となると結局、一番大きい数だけ使いきれず、それ以外は最大値をとることになる

=end

# 単純な Array#max と Array#sum だと TLE だったから、公式を使う

sum = N * (N + 1) / 2
max = N

p sum - max