# https://atcoder.jp/contests/sumitrust2019/tasks/sumitb2019_b

N = gets.chomp.to_i

ans = ":("
1.upto(N) do |num|
  if (num * 1.08).floor == N
    ans = num.to_s
  end
end

puts ans
