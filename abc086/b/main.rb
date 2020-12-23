#!/usr/bin/env ruby

require 'complex'

a, b = gets.chomp.split.map(&:to_i)

num = (a.to_s + b.to_s).to_i

def full_search(num)
  max = Math.sqrt(num).floor
  ans = 'No'
  1.upto(max) do |candidate|
    if candidate ** 2 == num
      ans = 'Yes'
      break
    end
  end
  ans
end

puts full_search(num)
