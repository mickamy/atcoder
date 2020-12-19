# https://atcoder.jp/contests/abc157/tasks/abc157_b

A = []
3.times do |i|
  A[i] = gets.chomp.split.map(&:to_i)
end
N = gets.chomp.to_i
B = []
N.times do |i|
  B[i] = gets.chomp.to_i
end

def bingo?
  hash = {}

  A.each_with_index do |row, x|
    hash[x] = {}
    row.each_with_index do |ele, y|
      hash[x][y] = B.include?(ele)
    end
  end

  ans = false
  0.upto(2) do |i|
    if hash[i][0] && hash[i][1] && hash[i][2]
      ans = true
    end
  end
  0.upto(2) do |i|
    if hash[0][i] && hash[1][i] && hash[2][i]
      ans = true
    end
  end

  if hash[0][0] && hash[1][1] && hash[2][2]
    ans = true
  end

  if hash[0][2] && hash[1][1] && hash[2][0]
    ans = true
  end

  ans
end

puts bingo? ? "Yes" : "No"
