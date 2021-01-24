#!/usr/bin/env ruby

N = gets.chomp.to_i
S = N.times.map { gets.chomp.to_s }

ans = 1
N.times do |i|
  s = S[i]
  if s == 'OR'
    ans += 2 ** (i + 1)
  end
end

puts ans
