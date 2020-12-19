# https://atcoder.jp/contests/abc186/tasks/abc186_b

H, W = gets.chomp.split.map(&:to_i)
A = []
H.times do |i|
  A[i] = gets.chomp.split.map(&:to_i)
end

mins = A.map { |row| row.min }
min = mins.min

ans = A.inject(0) do |acc, row|
  row.inject(acc) { |row_acc, e| row_acc + (e - min) }
end

p ans
