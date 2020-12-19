# https://atcoder.jp/contests/code-festival-2016-qualb/tasks/codefestival_2016_qualB_b

N, A, B = gets.chomp.split.map(&:to_i)
S = gets.chomp

DOMESTIC = 'a'
FOREIGN = 'b'

PASSED = ''

passed_d = 0
passed_f = 0

S.split('').each_with_index do |char, i|
  passed = passed_d + passed_f

  pass = false
  case char
  when DOMESTIC
    pass = passed < A + B
    passed_d += 1 if pass
  when FOREIGN
    pass = passed < A + B && passed_f < B
    passed_f += 1 if pass
  else
    # no chance
  end

  puts pass ? "Yes" : "No"
end

