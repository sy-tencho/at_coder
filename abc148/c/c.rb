a, b = gets.chop.split.map(&:to_i)

def euclid(a, b)
  return a if b == 0
  euclid(b, a % b)
end

puts a * b / euclid(a, b)
