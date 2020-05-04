N, K = gets.chop.split.map(&:to_i)
snk = Array.new(N, nil)

(K * 2).times do |i|
  a = gets.chop.split(' ').map(&:to_i)

  unless i == 0 || i % 2 == 0
    a.each do |i|
      snk[i - 1] = true
    end
  end
end


puts snk.count{ |x| x.nil? }