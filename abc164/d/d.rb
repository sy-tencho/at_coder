s = gets.chop

ans = 0
(1..100).each do |i|
  ans += 1 if s.match((2019 * i).to_s)
end

puts ans
