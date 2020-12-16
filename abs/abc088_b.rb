N = gets.to_i
AS = gets.split(" ").map(&:to_i)

alice = 0
bob = 0

sorted = AS.sort { |x, y| y <=> x }
sorted.each_with_index do |a, i|
  if i % 2 == 0
    alice += a
  else
    bob += a
  end
end

puts alice - bob
