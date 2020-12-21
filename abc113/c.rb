# https://atcoder.jp/contests/abc113/tasks/abc113_c

N, M = gets.chomp.split.map(&:to_i)
CITY_BIRTH = []
M.times do |i|
  p, y = gets.chomp.split.map(&:to_i)
  CITY_BIRTH[i] = { p: p, y: y }
end

=begin
Yi belongs to Pi

Pi で x 番目に誕生したら NUMi = Pi 六桁 + x 六桁(left-padding 0)
=end

year_to_i = {}
prefs = {}
CITY_BIRTH.each_with_index do |pair, i|
  pref = pair[:p]
  year = pair[:y]

  years = prefs[pref] || []
  years << year
  year_to_i[year] = i
  prefs[pref] = years
end

nums = {}
prefs.each do |pref, cities|
  pref_code = pref.to_s.rjust(6, "0")
  cities.sort.each_with_index do |year, i|
    city_code = (i + 1).to_s.rjust(6, "0")
    nums[year] = pref_code + city_code
  end
end

year_to_i.sort_by { |_, v| v }.each do |year, i|
  puts nums[year]
end
