n = gets.chop.to_i
s = gets.chop.split('')

count = 0
(0..n).each do |i|
  if s[i] == 'A' && s[i+1] == 'B' && s[i+2] == 'C'
    count += 1
  end
end

puts count
