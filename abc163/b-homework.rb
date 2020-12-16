n, m = gets.split(" ").map(&:to_i)
as = gets.split(" ").map(&:to_i)

DAYS = n
HOMEWORK_COUNT = m
HOMEWORK_COSTS = as
UNEXECUTABLE = -1

if HOMEWORK_COUNT != HOMEWORK_COSTS.count
  raise "Invalid input"
end

cost = HOMEWORK_COSTS.inject { |acc, c| acc + c }
if cost > DAYS
  puts UNEXECUTABLE
else
  puts DAYS - cost
end
