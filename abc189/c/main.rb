#!/usr/bin/env ruby

N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

# l 以上 r 以下の全ての整数 i について、x ≤ Ai

elems = A.uniq.sort.reverse

candidates = []
elems.each do |e|
  diffs = A.map { |a| a - e }
  sum = 0
  diffs.each do |d|
    if d < 0
      candidates << sum
      sum = 0
      next
    end
    sum += e
  end
  candidates << sum
end

puts candidates.max
