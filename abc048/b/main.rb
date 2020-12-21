#!/usr/bin/env ruby

a, b, x = gets.chomp.split.map(&:to_i)

=begin
a <= y <= b な y で x で割り切れるものの個数
=end

ans = 0

a.upto(b) do |num|
  if num % x == 0
    ans += 1
  end
end

puts ans
