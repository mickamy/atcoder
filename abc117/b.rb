# https://atcoder.jp/contests/abc117/tasks/abc117_b

N = gets.chomp.to_i
L = gets.chomp.split.map(&:to_i)

max = L.max
other_sum = L.sum - max
ans = max < other_sum

puts ans ? "Yes" : "No"
