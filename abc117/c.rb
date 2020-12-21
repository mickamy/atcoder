# https://atcoder.jp/contests/abc117/tasks/abc117_c

N, M = gets.chomp.split.map(&:to_i)
X = gets.chomp.split.map(&:to_i).sort

=begin
操作O:
  コマを 1 つ選び、そのコマの座標を x とする。そのコマを座標 x+1 もしくは座標 x−1 に移動する

操作Oを繰り返して、目的を達成するまでに移動を行う回数の最小値
=end

if N >= M
  puts 0
  exit
end

=begin
最初に、指定箇所に置かないことはなんら得ではない
ので、指定箇所のうち何処かに置くのだけれど
- 途中の方向転換は損
- あんまり遠くに行くくらいなら動かさない駒を最初においておきたい

2 5
10 12 1 2 14
1 2 10 12 14
x         x

3 7
-10 -3 0 9 -100 2 17

-100 -10 0 2 3 9 17
  X   X  X


=end

offsets = {}
prev = X.first
1.upto(X.length - 1) do |i|
  current = X[i]
  offsets[i] = current - prev
  prev = current
end

slice = []
ans = 0
offsets.sort_by { |_, v| v }.reverse.to_h.each do |i, distance|
  if slice.length < N - 1
    slice << i
    next
  end
  ans += distance
end



p ans
