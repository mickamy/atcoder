#!/usr/bin/env ruby

N = gets.chomp.to_i

cando = false

def is_kaibun(str)
  str == str.reverse
end

s = N.to_s.gsub(/(^0+)|(0+$)/, '')

cando = is_kaibun(s)

puts cando ? "Yes" : "No"
