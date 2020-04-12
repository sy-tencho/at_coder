N = gets.chop.to_i
P = gets.chop.split(' ').map(&:to_i)

cnt = 0

(0..P.count-2).each do |i|
  cnt += 1 if P[i] < P[i+1]
end

puts N - cnt
