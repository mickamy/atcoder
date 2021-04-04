#!/usr/bin/env ruby

a, b = gets.chomp.split(' ').map(&:to_i)
c, d = gets.chomp.split(' ').map(&:to_i)

candidates = []

a.upto(b) do |x|
  c.upto(d) do |y|
    candidates << x - y
  end
end

puts candidates.max
