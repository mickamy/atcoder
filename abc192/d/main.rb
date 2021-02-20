#!/usr/bin/env ruby

X = gets.chomp.to_s
M = gets.chomp.to_i

def solve(d, m, x)
  ans = 0
  base = d + 1
  while true
    value = convert(x, base)
    if value <= m
      ans += 1 
    else
      return ans
    end
    base += 1
  end
end

def convert(text, base)
  ans = 0
  text.reverse.chars.each_with_index do |v, i|
    power = i
    ans += v.to_i * (base ** power)
  end
  ans
end

d = X.split('').map(&:to_i).max

puts solve(d, M, X)
