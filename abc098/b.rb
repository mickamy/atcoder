# https://atcoder.jp/contests/abc098/tasks/abc098_b

N = gets.chomp.to_i
S = gets.chomp

=begin
英小文字からなる長さ N の文字列 S が与えられます。 この文字列を一箇所で切断して、文字列 X と Y に分割します。
このとき、「X と Y のどちらにも含まれている文字」の種類数を最大化したいです。
文字列を切断する位置を適切に決めた際の「X と Y のどちらにも含まれている文字」の種類数の最大値を求めてください。
=end

# 全件走査で行けそう

max = 0
0.upto(N - 2) do |i|
  a, b = [S[0..i], S[i + 1..-1]]
  count = (a.chars & b.chars).length
  max = [count, max].max
end

p max
