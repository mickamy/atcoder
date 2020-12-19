# https://atcoder.jp/contests/abc066/tasks/abc066_b

S = gets.chomp

def solve
  1.upto(S.length - 1) do |i|
    sub = S[0, S.length - i]
    next if sub.length.odd? # 半分にできないと偶文字列になれない

    half = sub[0, sub.length / 2]
    if half * 2 == sub
      return sub.length
    end
  end
end

p solve
