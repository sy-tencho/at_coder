n, m, x = gets.chop.split.map(&:to_i)
a = []
n.times { a.push(gets.chop.split.map(&:to_i)) }

hoge = []
z = []
(1..m).each do |i|
  z.push(i)
end

m.times do |i|
  z.permutation(i+1).to_a.each do |j|
    hoge.push(j)
  end
end

total = 0
flag = false


hoge.each do |i|
  
end