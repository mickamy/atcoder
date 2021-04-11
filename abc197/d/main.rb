#!/usr/bin/env ruby

require 'matrix'

N = gets.chomp.to_i
x0, y0 = gets.chomp.split(' ').map(&:to_f)
xn2, yn2 = gets.chomp.split(' ').map(&:to_f)

center_x = (x0 + xn2) / 2.0
center_y = (y0 + yn2) / 2.0

rotate = 360/N.to_f
radian = (rotate * Math::PI / 180.0)

a = Math.cos(radian) 
b = -Math.sin(radian)
c = Math.sin(radian) 
d = Math.cos(radian)

e = x0 - center_x
f = y0 - center_y

x = a * e + b * f + center_x
y = c * e + d * f + center_y

puts [x, y].map(&:to_s).join(' ')
