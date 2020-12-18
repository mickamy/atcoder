# https://atcoder.jp/contests/agc040/tasks/agc040_a

S = gets.chomp.chars

LESS = '<'
GREATER = '>'

h = Hash.new(0)

0.upto(S.size - 1) do |index|
  me = h[index]
  if S[index] == LESS
    h[index + 1] = me + 1
  end
end

(S.size - 1).downto(0) do |index|
  if S[index] == GREATER && me <= h[index + 1]
    h[index] = h[index + 1] + 1
  end
end

p h.values.sum
