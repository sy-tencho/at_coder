a, b, k = gets.chop.split.map(&:to_i)

if k <= a
  print a - k, ' ', b
elsif k > a && k <= a + b
  print 0, ' ', b - (k - a)
else
  print 0, ' ', 0
end