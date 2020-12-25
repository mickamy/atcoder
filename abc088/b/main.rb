#!/usr/bin/env ruby

N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i).sort.reverse

ALICE = []
BOB = []

A.each_with_index do |a, i|
  if i.odd?
    BOB << a
  else
    ALICE << a
  end
end

puts ALICE.sum - BOB.sum
