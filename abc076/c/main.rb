#!/usr/bin/env ruby

S = gets.chomp
T = gets.chomp

=begin
条件1：文字列 S の中に連続する部分文字列として英小文字から成る文字列 T が含まれている。
条件2：S は、条件1を満たす文字列の中で辞書順最小の文字列である。

条件1より、連続する |T| の ? は T に置換される
条件2より、|T| 未満の連続する ? は a で埋められる
=end

UNRESTORABLE = 'UNRESTORABLE'

if T.length > S.length
  puts UNRESTORABLE
  exit
end

# 辞書順だから、最後のものを置き換えられれば良い
index_to_be_replaced = nil
0.upto(S.length - T.length) do |i|
  enc = S[i, T.length]
  not_matched = false
  
  enc.chars.each_with_index do |enc_char, k|
    dec_char = T[k]
    if enc_char != dec_char && enc_char != '?'
      not_matched = true
      break
    end
  end

  if not_matched
    next
  else
    index_to_be_replaced = i
  end
end

unless index_to_be_replaced
  puts UNRESTORABLE
  exit
end

decrypted = S
decrypted[index_to_be_replaced, T.length] = T
puts decrypted.gsub('?', 'a')
