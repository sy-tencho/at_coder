A, B, N = gets.chop.split.map(&:to_i)

y = 0
if N < B
  y = (A * N / B).floor - (A * (N / B).floor)
else
  (B-1..N).each do |i|
    z = (A * i / B).floor - (A * (i / B).floor)
    y = z if z > y 
  end
end

puts y
