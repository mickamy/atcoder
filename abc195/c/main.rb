#!/usr/bin/env ruby

N = gets.chomp.to_i

MAX_0 = 10 ** 3 - 1
MAX_1 = 10 ** 6 - 1
MAX_2 = 10 ** 9 - 1
MAX_3 = 10 ** 12 - 1
MAX_4 = 10 ** 15 - 1
MAX_5 = 10 ** 18 - 1

if N <= MAX_0
  puts 0
elsif N <= MAX_1
  puts N - MAX_0
elsif N <= MAX_2
  one = MAX_1 - MAX_0
  two = N - MAX_1
  puts one + two * 2
elsif N <= MAX_3
  one = MAX_1 - MAX_0
  two = MAX_2 - MAX_1
  three = N - MAX_2
  puts one + two * 2 + three * 3
elsif N <= MAX_4
  one = MAX_1 - MAX_0
  two = MAX_2 - MAX_1
  three = MAX_3 - MAX_2
  four = N - MAX_3
  puts one + two * 2 + three * 3 + four * 4
else
  one = MAX_1 - MAX_0
  two = MAX_2 - MAX_1
  three = MAX_3 - MAX_2
  four = MAX_4 - MAX_3
  five = N - MAX_4
  puts one + two * 2 + three * 3 + four * 4 + five * 5
end
