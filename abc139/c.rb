# https://atcoder.jp/contests/abc139/tasks/abc139_c

=begin
あなたは好きなマスに降り立ち、右隣のマスの高さが今居るマスの高さ以下である限り右隣のマスへ移動し続けます。
最大で何回移動できるでしょうか。
=end

N = gets.chomp.to_i
H = gets.chomp.split.map(&:to_i)

=begin
# ある index から行ける回数
hash = { 0 => 0 }
0.upto(N - 2) do |i|
  right = H[i + 1]
  current = H[i]
  from_key = hash.keys.sort.last
  if right <= current
    hash[from_key] += 1
  else
    hash[i] = 0
  end
end
p hash.values.max

これだと無駄に hash の sort とか入れていたためか、TLE だった
最大値だけわかればいいから、hash じゃなくていい
=end

max = 0
distance = 0
0.upto(N - 2) do |i|
  right = H[i + 1]
  current = H[i]
  if right <= current
    distance += 1
    max = [distance, max].max
  else
    distance = 0
  end
end

p max
