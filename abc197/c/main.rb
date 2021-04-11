#!/usr/bin/env ruby

N = gets.chomp.to_i
A = gets.chomp.split(' ').map(&:to_i)

min = Float::INFINITY

def total_or(arr)
  arr.inject(0) do |acc, ele|
    acc | ele
  end
end

def total_xor(arr)
  arr.inject(0) do |acc, ele|
    acc ^ ele
  end
end

[0, 1].repeated_permutation(N) do |bits|
  cur = 0
  arr = []
  bits.each_with_index do |bit, index|
    next if bit == 0
      
    slice = A.slice(cur, index)
    arr << total_or(slice)
    cur = index
  end

  set_xor = total_xor(arr)
  
  min = [set_xor, min].min
end

puts min