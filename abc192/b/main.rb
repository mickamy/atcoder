#!/usr/bin/env ruby

S = gets.chomp.to_s

ans = true

S.each_char.with_index do |s, i|
  if i % 2 == 0
    ans = ans && s == s.downcase
  else
    ans = ans && s == s.upcase
  end
end

puts ans ? "Yes" : "No"
