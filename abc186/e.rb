# https://atcoder.jp/contests/abc186/tasks/abc186_e

T = gets.chomp.to_i
TEST_CASES = []
T.times do |i|
  n, s, k = gets.chomp.split.map(&:to_i)
  TEST_CASES[i] = { n: n, s: s, k: k }
end

def solve(n, s, k)
  throne = 0
  t = (throne + s) % n
  ans = 0

  if n.gcd(k) != 1
    return -1
  end

  while t % n != throne
    t += k
    ans += 1
  end

  ans
end

TEST_CASES.each do |test_case|
  n, s, k = test_case.values
  p solve(n, s, k)
end
