#!/usr/bin/env ruby

N, K = gets.chomp.split(' ').map(&:to_i)

as = [N]

def g1(text)
  text.split('').sort.reverse.join('').to_i
end

def g2(text)
  text.split('').sort.join('').to_i
end

def f(num)
  s = num.to_s
  g1(s) - g2(s)
end

K.times do |i|
  prev = as[i].to_s
  as << f(prev)
end

puts as.last
