n = gets.chop.to_i
s = n.times.map { gets }
ans = s.uniq.count

puts ans
