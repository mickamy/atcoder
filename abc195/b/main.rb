#!/usr/bin/env ruby

A, B, W = gets.chomp.split(' ').map(&:to_i)

UNSATISFIABLE = 'UNSATISFIABLE'

weight = W * 1000

amari_a = weight % A
amari_b = weight % B
  

if impossible
  puts UNSATISFIABLE
else
  puts "possible"
  # min = find_min(A, B, W)
  # max = find_max(A, B, W)

  # puts [min, max].map(&:to_s).join(' ')
end
