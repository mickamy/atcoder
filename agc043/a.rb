# https://atcoder.jp/contests/agc043/tasks/agc043_a

H, W = gets.chomp.split.map(&:to_i)
S = H.times.map { gets.chomp }

BLACK = "#"
WHITE = "."

dp = Array.new(H) { Array.new(W, Float::MAX) }
dp[0][0] = S[0][0] == BLACK ? 1 : 0

0.upto(H - 1) do |y|
  0.upto(W - 1) do |x|
    [[1, 0], [0, 1]].each do |(dy, dx)|
      nx = x + dx
      ny = y + dy
      next if nx >= W || ny >= H

      if S[ny][nx] == BLACK && S[y][x] == WHITE
        dp[ny][nx] = [dp[ny][nx], dp[y][x] + 1].min
      else
        dp[ny][nx] = [dp[ny][nx], dp[y][x]].min
      end
    end
  end
end

puts dp[-1][-1]
