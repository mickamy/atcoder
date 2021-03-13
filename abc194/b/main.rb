#!/usr/bin/env ruby

N = gets.chomp.to_i
MITSUMORI = N.times.map do
  gets.chomp.split(' ').map(&:to_i)
end

candidates_a = {}
candidates_b = {}

MITSUMORI.each.with_index do |mitsumori, index|
  a, b = mitsumori
  candidates_a[index] = a
  candidates_b[index] = b
end

a_firstest, a_time = candidates_a.min_by { |_, v| v }
b_firstest, b_time = candidates_b.min_by { |_, v| v }

ans = -1
if a_firstest == b_firstest
  ans = a_time + b_time
  a_second, a_second_time = candidates_a.sort_by { |_, v| v }[1]
  b_second, b_second_time = candidates_b.sort_by { |_, v| v }[1]
  ans_1 = [a_time, b_second_time].max
  ans_2 = [b_time, a_second_time].max
  ans = [ans, ans_1, ans_2].min
else
  ans = [a_time, b_time].max
end

puts ans
