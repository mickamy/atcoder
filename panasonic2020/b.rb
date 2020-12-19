# https://atcoder.jp/contests/panasonic2020/tasks/panasonic2020_b

H, W = gets.chomp.split.map(&:to_i)

area = H * W

ans = (area.to_f / 2).ceil

# 縦横片方でも 1 だったらその場から動けない
if H == 1 || W == 1
  ans = 1
end

puts ans
