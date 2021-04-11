#!/usr/bin/env ruby

H, W, Y, X = gets.chomp.split(' ').map(&:to_i)
S = H.times.map { |_i| gets.chomp }

x = X - 1
y = Y - 1

hori = 0

row = S[y]

left = row[0..x]
left = left[0...-1]
right = row[x..(W)]
right = right[1..-1]

hori += left.reverse.scan(/^\.+/).first&.length || 0
hori += right.scan(/^\.+/).first&.length || 0
# puts "left:#{left}, right:#{right}"
# puts "left:#{left.reverse.scan(/^\.+/).first&.length || 0}"
# puts "right:#{right.scan(/^\.+/).first&.length || 0}"

ver = 0

column = S.map { |s| s[x] }.join('')

up, down = [column[0..y], column[(y)..(H)]]
up = up[0...-1]
down = down[1..-1]
ver += up.reverse.scan(/^\.+/).first&.length || 0
ver += down.scan(/^\.+/).first&.length || 0
# puts "up:#{up}, down:#{down}"
# puts "up:#{up.reverse.scan(/^\.+/).first&.length || 0}"
# puts "down:#{down.scan(/^\.+/).first&.length || 0}"

puts hori + ver + 1

