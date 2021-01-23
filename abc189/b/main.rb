#!/usr/bin/env ruby

N, x = gets.chomp.split.map(&:to_i)
DRINKS = N.times.map do |_|
  gets.chomp.split.map(&:to_i)
end

alc = 0
ans = -1

X = x * 100
DRINKS.each_with_index do |drink, index|
  v, p = drink
  alc += v * p
  if alc > X
    ans = index + 1
    break
  end
end

puts ans
