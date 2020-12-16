def calculate(r)
  (r * 2).to_f * Math::PI
end

r = gets.to_i
result = calculate(r)
p result.round(2)
