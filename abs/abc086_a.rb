a, b = gets.split(" ").map(&:to_i)

def odd_even(n)
  n % 2 == 0 ? "Even" : "Odd"
end

puts odd_even(a * b)