# https://atcoder.jp/contests/abc153/tasks/abc153_e

H, N = gets.chomp.split.map(&:to_i)
MAGICS = []
N.times do |i|
  damage, cost = gets.chomp.split.map(&:to_i)
  MAGICS[i] = { damage: damage, cost: cost }
end

dp = Array.new(H + 1, 10**18)
dp[0] = 0

MAGICS.each do |magic|
  damage = magic[:damage]
  cost = magic[:cost]
  H.next.times do |i|
    dp[i] = [
      dp[i],
      dp[[i - damage, 0].max] + cost
    ]
  end
end

p dp[H]
