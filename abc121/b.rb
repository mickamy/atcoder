# https://atcoder.jp/contests/abc121/tasks/abc121_b

N, M, C = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)
A = []
N.times do |i|
  A[i] = gets.chomp.split.map(&:to_i)
end

# i 番目のソースコードに対して
# Ai1 * B1 + Ai2 * B2 + ... + AiM & BM + C
def passed?(arr)
  ans = 0
  arr.each_with_index do |a, i|
    ans += a * B[i]
  end
  ans + C > 0
end

ans = 0
A.each do |a|
  if passed?(a)
    ans += 1
  end
end

p ans