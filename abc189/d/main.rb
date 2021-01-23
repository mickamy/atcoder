#!/usr/bin/env ruby

N = gets.chomp.to_i
S = N.times.map { gets.chomp.to_s }

last = S.last

ans = 0
if last == 'AND'
  # Yi-1, Xi = (True, True)
else
  # Yi-1, Xi = (True, True)
  # Yi-1, Xi = (True, False)
  # Yi-1, Xi = (False, False)
end

and_count = S.count('AND')

p 2 ** (N + 1) - (and_count * 3) - 1
