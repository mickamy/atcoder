#!/usr/bin/env ruby

N = gets.chomp.to_i

ans = 0
1000000.downto(1) do |num|
  left = num.to_s
  n = (left + left).to_i
  if N >= n
    ans += 1
  end
end

puts ans
