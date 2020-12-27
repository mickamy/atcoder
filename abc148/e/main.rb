#!/usr/bin/env ruby

N = gets.chomp.to_i

=begin
10進法表記で末尾に何個 0 があるか、は 10 で何回割れるかに等しい
g(n, x) = n は x で何回割れるか
としたとき、得るべき解は g(n!!, 10) となり

g(n!!, 10) = min(g(n!!, 2), g(n!!, 5))

2 で割り切れる回数と 5 で割り切れる回数とでは、明らかに後者のほうが少ないので、
5 で割り切れる回数のみを考えればよい
=end

if N.odd?
  p 0
  exit
end

d = 10
ans = 0
while d <= N do
  ans += N / d
  d *= 5
end

p ans
