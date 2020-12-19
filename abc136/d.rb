# https://atcoder.jp/contests/abc136/tasks/abc136_d

S = gets.chomp

times = 10 ** 100


=begin
試行回数が 10 ** 100 なので愚直にやると TLE になりそう

L と R の組み合わせ

R L R R R L L R R R L R L R R R L

R L となっていたら、延々に繰り返す

初期値 R の場合:
  右に見ていって、最初の L にぶち当たるまでの offset が
    - 奇数だったら、最終状態はその L - 1
    - 偶数だったら、最終状態はその L
初期値 L の場合:
  左に見ていって、最初の R にぶち当たるまでの offset が
    - 奇数だったら、最終状態はその R + 1
    - 偶数だったら、最終状態はその R
=end

arr = Array.new(S.length, 0)
S.chars.each_with_index do |char, i|
  case char
  when 'R'
    first_l = S.index('L', i)
    offset = (i - first_l).abs

    if offset.odd?
      arr[first_l - 1] += 1
    else
      arr[first_l] += 1
    end
  when 'L'
    first_r = S.rindex('R', i)
    offset = (i - first_r).abs

    if offset.odd?
      arr[first_r + 1] += 1
    else
      arr[first_r] += 1
    end
  else raise
  end
end

puts arr.map(&:to_s).join(" ")