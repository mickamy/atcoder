N = gets.to_i
DS = []
N.times do |i|
  DS[i] = gets.to_i
end

mochis = DS.sort { |x, y| y <=> x }.uniq
puts mochis.count
