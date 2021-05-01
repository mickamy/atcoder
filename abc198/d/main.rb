#!/usr/bin/env ruby

require 'set'

def solve(a, b, c)
  words = [a, b, c]
  chars = Set.new words.join.each_char

  first_chars = Set.new words.select {|w| w.size > 1 }.map {|w| w[0] }
  n = first_chars.size
  sorted_chars = first_chars.to_a.join + (chars - first_chars).to_a.join
  %w[0 1 2 3 4 5 6 7 8 9].permutation(chars.size).each do |guess|
    next if guess[0, n].member? '0'
    expr = [a, b, c].join.tr sorted_chars, guess.join
    if eval expr
      return expr.gsub(' + ', ',').gsub(' == ', ',').split(',')
    end
  end
  return
end

S1 = gets.chomp.to_s
S2 = gets.chomp.to_s
S3 = gets.chomp.to_s

ans = solve("#{S1} + #{S2} == #{S3}")

puts ans ? ans : "UNSOLVABLE"
