#!/usr/bin/env ruby

N = gets.chomp.to_i

if N < 3
  puts N == 2 ? 1 : 0
  return
end


puts (N - 1)
