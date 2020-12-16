N, A, B = gets.split(" ").map(&:to_i)

output = 0

def ok?(n)
  A <= n && n <= B
end

1.upto(N) do |n|
  digits = n.to_s.scan(/\d/).map(&:to_i)
  sum = digits.inject { |acc, i| acc + i }
  if ok?(sum)
    output += n
  end
end

p output
