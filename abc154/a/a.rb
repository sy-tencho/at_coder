S, T = gets.chop.split()
A, B = gets.chop.split().map(&:to_i)
U = gets.chop

if U == S
  print A - 1, ' ', B
else
  print A, ' ', B - 1
end