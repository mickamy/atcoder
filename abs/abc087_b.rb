def calculate(_500, _100, _50, x)
  output = 0
  0.upto(_500) do |a|
    sum_a = a * 500
    0.upto(_100) do |b|
      sum_b = b * 100
      0.upto(_50) do |c|
        sum_c = c * 50
        sum = sum_a + sum_b + sum_c
        if sum == x
          output += 1
        end
      end
    end
  end
  output
end

a = gets.to_i
b = gets.to_i
c = gets.to_i
x = gets.to_i

output = calculate(a, b, c, x)

puts output
