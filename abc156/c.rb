# https://atcoder.jp/contests/abc156/tasks/abc156_c

N = gets.chomp.to_i
X = gets.chomp.split.map(&:to_i)

def cost(from, to)
  (from - to) ** 2
end

# 一番左
left = X.min

# 一番右
right = X.max

hash = Hash.new(0)
left.upto(right) do |i|
  X.each do |x|
    hash[i] += cost(x, i)
  end
end

p hash.values.min
