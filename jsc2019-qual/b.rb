# https://atcoder.jp/contests/jsc2019-qual/tasks/jsc2019_qual_b

N, K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)

=begin
ここで B の転倒数は、整数の順序対 (i, j) (0≤i<j≤K×N−1) であって Bi>Bj を満たすものの個数として定義されます

1 <= K <= 10 ** 9 なので実際に B を生成したら TLE
=end

r_tentou = 0
l_tentou = 0
A.each_with_index do |num, i|
  left = A[0, i]
  right = A[i + 1, A.length]

  r_tentou += (right.count { |e| num > e })
  l_tentou += (left.count { |e| num > e })
end

sum = ((r_tentou) * K) + (r_tentou + l_tentou) * K * (K - 1) / 2
puts sum % (10 ** 9 + 7)