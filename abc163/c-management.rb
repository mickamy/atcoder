n = gets.to_i
as = gets.split(" ").map(&:to_i)

if n != as.count + 1
  raise "Invalid input"
end

works_fors = {}
n.times do |i|
  works_fors[i] = 0
end

as.each do |boss|
  works_fors[boss - 1] += 1
end

works_fors.values.each do |works_for|
  puts works_for
end
