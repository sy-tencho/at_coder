n = gets.chop.to_i
s, t = gets.chop.split.map(&:to_s)

ans = []

(0..n-1).each do |i|
  ans << s[i] + t[i]
end

puts ans.join
