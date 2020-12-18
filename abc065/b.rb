# https://atcoder.jp/contests/abc065/tasks/abc065_b

N = gets.chomp.to_i
ARR = []
N.times do |i|
  ARR[i] = gets.chomp.to_i
end

IMPOSSIBLE = -1

START_INDEX = 0
GOAL_INDEX = 1

ans = 0
index = START_INDEX

N.times do
  index = ARR[index] - 1
  ans += 1
  if index == GOAL_INDEX
    puts ans
    exit
  end
end

puts IMPOSSIBLE
