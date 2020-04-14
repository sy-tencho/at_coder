N, K, M = gets.chop.split.map(&:to_i)
A = gets.chop.split(' ').map(&:to_i)

if A.inject(:+) >= N * M
  puts 0
elsif M * N - A.inject(:+) > K
  puts -1
else
  puts M * N - A.inject(:+)
end
