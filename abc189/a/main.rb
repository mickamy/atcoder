#!/usr/bin/env ruby

C = gets.chomp.split('')

puts (C[0] == C[1] && C[0] == C[2]) ? 'Won' : 'Lost'
