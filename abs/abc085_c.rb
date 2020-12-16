N, Y = gets.split(" ").map(&:to_i)

IMPOSSIBLE = -1

ONE_THOUSAND = 1000
FIVE_THOUSANDS = ONE_THOUSAND * 5
TEN_THOUSANDS = ONE_THOUSAND * 10

def calculate(n, target)
  0.upto(n) do |ten|
    sum_ten = TEN_THOUSANDS * ten
    0.upto(n - ten) do |five|
      sum_five = FIVE_THOUSANDS * five
      
      one = n - ten - five
      sum_one = ONE_THOUSAND * one
      sum = sum_ten + sum_five + sum_one
      
      if sum == Y
        return [ten, five, one].map(&:to_s).join(" ")
      end
    end
  end
  
  return [IMPOSSIBLE, IMPOSSIBLE, IMPOSSIBLE].map(&:to_s).join(" ")
end

puts calculate(N, Y)
