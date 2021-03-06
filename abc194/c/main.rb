#!/usr/bin/env ruby

N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

power_sum = 0
sum = 0
A.each do |a|
  power_sum += a ** 2
  sum += a
end

ans = 0
(A.size - 1).downto(1) do |index|
  element = A[index]
  power = element ** 2
  ans += power * index
  power_sum -= power
  ans += power_sum
  sum -= element
  ans -= 2 * element * sum
end

puts ans
