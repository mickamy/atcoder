# https://atcoder.jp/contests/agc029/tasks/agc029_a
# 

S = gets.chomp.to_s

BLACK = 'B'
WHITE = 'W'

text = S

reg = Regexp.new "#{BLACK}#{WHITE}"
flip = "#{WHITE}#{BLACK}"

iteration = 0
matched = text.slice reg
while matched
  text = text.sub(reg, flip)
  matched = text.slice reg
  iteration += 1
end

p iteration
