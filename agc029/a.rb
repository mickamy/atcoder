# https://atcoder.jp/contests/agc029/tasks/agc029_a
# 

S = gets.chomp.to_s

BLACK = 'B'
WHITE = 'W'

text = S

# 全件走査では TLE で NG
# 
# reg = Regexp.new "#{BLACK}#{WHITE}"
# flip = "#{WHITE}#{BLACK}"

# iteration = 0
# matched = text.slice reg
# while matched
#   text = text.sub(reg, flip)
#   matched = text.slice reg
#   iteration += 1
# end
# p iteration

# W を左へ動かしていく

black_on_left = 0
ans = 0
text.each_char do |char|
  if char == BLACK
    black_on_left += 1
  else
    ans += black_on_left
  end
end

puts ans
