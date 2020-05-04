x = gets.chop.to_i
ans = []
ary = []

(0..100).each do |i|
  ary.push(i ** 5)
end

ary.each do |i|
  list = []
  ary.each do |j|
    if i + j == x
      puts i**(1/5), j**(1/5)
      break
    elsif -i + j == x
      puts -i**(1/5), j**(1/5)
      break
    elsif i - j == x
      puts i**(1/5), -j**(1/5)
      break
    elsif -i - j == x
      puts -i**(1/5), -j**(1/5)
      break
    end
  end
end
