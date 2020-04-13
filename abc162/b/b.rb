N = gets.chop.to_i

ans = []
(1..N).each do |i|
  unless i % 3 == 0 || i % 5 == 0
    ans.push(i)
  end
end

puts ans.inject(:+)
