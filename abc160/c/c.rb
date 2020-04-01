k, n = gets.chop.split.map(&:to_i)
a = gets.chop.split(' ').map(&:to_i)


dis = []

a.each_with_index do |val, i|
  if i == 0
    dis.push(val) 
  else
    dis.push(val - a[i - 1])
  end
end

dis.push(k - a[-1] + a[0])
max = dis.max

puts k - max
