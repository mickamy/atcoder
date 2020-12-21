#!/usr/bin/env ruby

N, X = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)

=begin
O: 任意の A より -1

goal: どの隣り合う A element において、総和が x 以下
=end


ans = 0
prev = 0
A.each do |a|
  sum = prev + a
  cost = 0
  if sum > X
    cost = sum - X
  end

  ans += cost
  prev = a - cost
end

puts ans
