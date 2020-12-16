S = gets.to_s

if S.match /^(dream|dreamer|erase|eraser)+$/
  puts "YES"
else 
  puts "NO"
end
