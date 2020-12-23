#!/usr/bin/env ruby

N, M = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
OPERATIONS = []
M.times.map do |_|
  b, c = gets.chomp.split.map(&:to_i)
  # sort する際にやりやすいので逆転させる
  OPERATIONS << [c, b]
end

=begin
O: カードを Bj 枚まで選ぶ(0 枚でもよい)。選んだカードに書かれている整数をそれぞれ Cj に書き換える。
M 回の操作終了後に N 枚のカードに書かれた整数の合計の最大値を求めてください。
=end

def solve
  A.sort!
  OPERATIONS.sort!

  ans = 0
  count = 0
  while count < N do
    if !OPERATIONS.empty? && A.last < OPERATIONS.last.first
      c, b = OPERATIONS.pop
      times = (count + b <= N) ? b : (N - count)
      ans += c * times
      count += times
    else
      ans += A.pop
      count += 1
    end
  end

  puts ans
end

solve