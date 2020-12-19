# https://atcoder.jp/contests/abc075/tasks/abc075_b

H, W = gets.chomp.split.map(&:to_i)
S = []
H.times do |i|
  S[i] = gets.chomp
end

matrix = [
  # 左
  { x: - 1, y: - 1 },
  { x: - 1, y: 0 },
  { x: - 1, y: 1 },

  # 真ん中
  { x: 0, y: - 1 },
  { x: 0, y: 1 },

  # 右
  { x: 1, y: - 1 },
  { x: 1, y: 0 },
  { x: 1, y: 1 },
]

S.each_with_index do |row, y|
  row.chars.each_with_index do |char, x|
    next if char == '#'
    count = 0

    matrix.each do |m|
      _x = x + m[:x]
      _y = y + m[:y]
      next unless (0...W).include?(_x)
      next unless (0...H).include?(_y)

      if S[_y][_x] == '#'
        count += 1
      end
    end

    S[y][x] = count.to_s
  end
end

S.each do |t|
  puts t
end
