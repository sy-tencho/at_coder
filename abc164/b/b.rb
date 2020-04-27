a, b, c, d = gets.chop.split.map(&:to_i)

x = c / b
y = a / d

xx = c % b
yy = a % d

xxx = xx == 0 ? x : x + 1
yyy = yy == 0 ? y : y + 1

if xxx <= yyy
  puts 'Yes'
else
  puts 'No'
end
