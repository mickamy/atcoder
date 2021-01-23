#!/usr/bin/env ruby

N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

# l 以上 r 以下の全ての整数 i について、x ≤ Ai

ans = 0
0.upto(N - 1) do |l|
  x = A[l]
  l.upto(N - 1) do |r|
    x = [x, A[r]].min
    ans = [ans, x * (r - l + 1)].max
  end
end

puts ans
