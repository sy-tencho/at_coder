a, b, c = gets.chop.split.map(&:to_i)
array = [a, b, c].uniq

if array.count == 2
  puts 'Yes'
else
  puts 'No'
end
