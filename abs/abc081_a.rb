ss = gets.scan(/\d/).map(&:to_i)

output = ss.inject { |acc, s| acc += s == 0 ? 0 : 1 }

puts output