#!/usr/bin/env ruby

N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

min = nil

def total_or(arr)
  arr.inject(0) do |acc, ele|
    acc | ele
  end
end

1.upto(N - 1) do |i|
  a = A.slice(0, i)
  b = A.slice(i, N)
  
  tmp = total_or(a) ^ total_or(b)
  if min
    min = [tmp, min].min
  else
    min = tmp
  end
end

puts min