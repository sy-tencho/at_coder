n, m = gets.chop.split.map(&:to_i)
puts (n * m) % 2 == 0 ? 'Even' : 'Odd'
