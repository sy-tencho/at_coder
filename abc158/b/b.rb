n, a, b = gets.chop.split.map(&:to_i)

s = n / (a + b)
r = n % (a + b)

puts r >= a ? s * a + a : s * a + r
