#!/usr/bin/env ruby

N = gets.chomp.to_i

COORDINATES = []
N.times do
  t, x, y = gets.chomp.split.map(&:to_i)
  COORDINATES << { t: t, x: x, y: y }
end

def possible?
  COORDINATES.prepend({ t: 0, x: 0, y: 0 })
  ans = true
  1.upto(N) do |i|
    before = COORDINATES[i - 1]
    current = COORDINATES[i]

    dt = (before[:t] - current[:t]).abs
    dx = (before[:x] - current[:x]).abs
    dy = (before[:y] - current[:y]).abs
    dis = dx + dy

    if dis > dt
      # 移動距離が時間差より大きければ不可能
      ans = false
      break
    elsif dis == dt
      # 移動距離と時間差がいっしょなら可能
      next
    else
      # 移動距離が時間差より短い場合は、2つの偶奇が一致していれば、行ったり来たりで可能
      if dis % 2 != dt % 2
        ans = false
        break
      end
    end
  end
  ans
end

puts possible? ? 'Yes' : 'No'
