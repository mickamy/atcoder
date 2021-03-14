#!/usr/bin/env ruby

N, M, Q = gets.chomp.split(' ').map(&:to_i)
ITEMS = N.times.map do |_|
  gets.chomp.split(' ').map(&:to_i)
end.sort_by do |item|
  w, v = item
  v
end.reverse

BOXES = gets.chomp.split(' ').map(&:to_i)

QUERIES = Q.times.map do |_|
  gets.chomp.split(' ').map(&:to_i)
end

def solve_napsak(boxes)
  sum = 0
  items = ITEMS.dup
  boxes.each do |box|
    item = items.find do |item|
      w, v = item
      w <= box
    end
    unless item
      next
    end
    sum += item[1]
    items.delete(item)
  end
  sum
end

def solve(left, right)
  boxes = BOXES.dup
  boxes.delete_if.with_index{|element, index| index >= left && index <= right }
  solve_napsak(boxes)
end

QUERIES.each do |query|
  left, right = query
  puts solve(left - 1, right - 1)
end