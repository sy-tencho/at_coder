N = gets.chop.to_i
X = gets.chop.split(' ').map(&:to_i)

def cons(p, x)
  return (p - x).abs ** 2
end

def main(n, x)
  min = x.min
  max = x.max

  array = []

  (min..max).each do |i|
    total = 0
    x.each do |j|
      total += cons(i, j)
    end

    array.push(total)
  end

  return array.min
end

puts main(N, X)
