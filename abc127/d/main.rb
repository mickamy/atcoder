#!/usr/bin/env ruby

N, M = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
OPERATIONS = []
M.times.map do |_|
  b, c = gets.chomp.split.map(&:to_i)
  OPERATIONS << { b: b, c: c }
end

=begin
O: カードを Bj 枚まで選ぶ(0 枚でもよい)。選んだカードに書かれている整数をそれぞれ Cj に書き換える。
M 回の操作終了後に N 枚のカードに書かれた整数の合計の最大値を求めてください。
=end

cards = A
OPERATIONS.each do |o|
  b = o[:b]
  c = o[:c]
  cards += Array.new(b, c)
end

ans = cards.sort.reverse.first(N).sum

puts ans