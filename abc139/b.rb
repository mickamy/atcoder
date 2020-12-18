# https://atcoder.jp/contests/abc139/tasks/abc139_b

outlets_in_plug, target_outlet = gets.chomp.split.map(&:to_i)

ans = 0
total = 1

while total < target_outlet
  total += outlets_in_plug - 1
  ans += 1
end

p ans
