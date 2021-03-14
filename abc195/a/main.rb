#!/usr/bin/env ruby

M, H = gets.chomp.split(' ').map(&:to_i)

can_defeat = H % M == 0

puts can_defeat ? 'Yes' : 'No'
