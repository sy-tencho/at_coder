N, K = gets.chop.split.map(&:to_i)
H = gets.chop.split(' ').map(&:to_i)

if K >= N
  puts 0
else
  H.sort!.reverse!
  h = H[K..-1]

  puts h.inject(:+)
end
