n, m = gets.chop.split.map(&:to_i)
a = gets.chop.split(' ').map(&:to_i)

sum = a.sum

if sum == 0
  puts 0
elsif sum > n
  puts '-1'
else
  puts n - sum
end
