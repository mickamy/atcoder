# https://atcoder.jp/contests/abc186/tasks/abc186_d

N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

ans = 0

# 普通に計算をやったら TLE
# A.each_with_index do |x, i|
#   i.upto(A.length - 1) do |j|
#     y = A[j]
#     ans += (x - y).abs
#   end
# end

# TLE
# nums = A.sort.reverse
# nums.each_with_index do |x, i|
#   succeeding = nums[i + 1, nums.length - 1]
#   ans += (x * succeeding.length) - succeeding.sum
# end

nums = A.sort
sum = nums.sum # sum のメモ化
nums.each_with_index do |num, i|
  sum -= num
  ans += sum - (N - i - 1) * num
end

p ans
