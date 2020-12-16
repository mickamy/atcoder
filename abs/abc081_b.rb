n = gets.to_i
as = gets.split(" ").map(&:to_i)

def executable?(arr)
  arr.all? { |n| n % 2 == 0 }
end

output = 0

while executable?(as)
  as = as.map { |a| a / 2 }
  output += 1
end

puts output
