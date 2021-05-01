#!/usr/bin/env ruby

require 'complex'

R, X, Y = gets.chomp.split(' ').map(&:to_i)

d = Math.sqrt(X ** 2 + Y ** 2)

if d == R
  puts 1
elsif d <= R * 2
  puts 2
else
  puts (d / R.to_f).ceil
end
