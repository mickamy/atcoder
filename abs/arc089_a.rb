N = gets.to_i
COORDINATES = []
N.times do |i|
  t, x, y = gets.split(" ").map(&:to_i)
  COORDINATES[i] = { t: t, x: x, y: y }
end

def reacable?(before, after)
  dx = (before[:x] - after[:x]).abs
  dy = (before[:y] - after[:y]).abs
  dt = (before[:t] - after[:t]).abs
  
  distance = dx + dy
  if distance > dt
    false
  else
    dt % 2 == distance % 2
  end
end

def reachable_travel?
  possible = true
  origin = { t: 0, x: 0, y: 0 }
  COORDINATES.each_with_index do |after, i|
    before = i > 0 ? COORDINATES[i - 1] : origin
    unless reacable?(before, after)
      possible = false
    end
  end
  possible
end

puts reachable_travel? ? "Yes" : "No"
