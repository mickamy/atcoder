# https://atcoder.jp/contests/abc186/tasks/abc186_c

N = gets.chomp.to_i

ans = 0
1.upto(N) do |num|
  if num.to_s.include? '7'
    next
  end
  hachi = num.to_s(8)
  unless hachi.include? '7'
    ans += 1
  end
end

p ans
