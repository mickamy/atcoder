# https://atcoder.jp/contests/abc153/tasks/abc153_d

H = gets.chomp.to_i

# 
# 愚直にループ回すと TLE
# monsters = [H]
# attempts = 0
# until monsters.empty?
#   i = 0
#   m = monsters[i]
#   monsters.delete_at(i)
#   if m != 1
#     new_m = m / 2
#     monsters += [new_m, new_m]
#   end
#   attempts += 1
# end
# p attempts

# H != 1 のとき、最初の攻撃によって二体に分かれるが、
# 生成されるモンスタの体力が同一なので、片方だけの試行回数がわかっていれば良い
# f(x) = 2f(x/2) + 1 #最初の攻撃
# ただし x != 1

def attemps_to_kill(hp)
  if hp == 1
    1
  else
    2 * attemps_to_kill(hp/2) + 1
  end
end

p attemps_to_kill(H)
