# https://atcoder.jp/contests/abc116/tasks/abc116_c

N = gets.chomp.to_i
H = gets.chomp.split.map(&:to_i)

# l <= x <= r の区間の花にたいして水やりすると、花の高さが 1 高くなる
# 左から考えていったときに、直前との差だけ、そいつのために水やりが必要
# ただし、直前の方が値が大きければ、直前のみずやりでまかなえるので計算しない
def solve(arr)
  ans = arr[0]
  1.upto(arr.length - 1) do |i|
    prev = arr[i - 1]
    elem = arr[i]
    if prev < elem
      ans += elem - prev
    end
  end

  ans
end

p solve(H)

=begin
input 1:
4
1 2 2 1

output 1:
2

input 2:
5
3 1 2 3 1

output 2:
5

input 3:
8
4 23 75 0 23 96 50 100

output 3:
221
=end

