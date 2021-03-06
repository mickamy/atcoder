#!/usr/bin/env ruby

A, B = gets.chomp.split(' ').map(&:to_i)

C = A + B
if C >= 15 && B >= 8
  puts 1
elsif C >= 10 && B >= 3
  puts 2
elsif C >= 3
  puts 3
else
  puts 4
end
