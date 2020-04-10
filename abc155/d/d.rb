N, K = gets.chop.split.map(&:to_i)
A = gets.chop.split(' ').map(&:to_i)

# array = []
# (0..(N - 1)).each do |i|
#   ((i + 1)..(N - 1)).each do |j|
#     array.push(A[i] * A[j])
#   end
# end

# puts array.sort[K - 1]

neg = []
zer = []
pos = []

A.each do |i|
  if i == 0
    zer.push(i)
  elsif i > 0
    pos.push(i)
  else
    neg.push(i)
  end
end

neg_c = neg.count
pos_c = pos.count
zer_c = zer.count

if K <= neg_c * pos_c
  ans = []
  neg.each do |i|
    pos.each do |j|
      ans.push(i * j)
    end
  end
  puts ans[K - 1]
elsif K > neg_c * pos_c && K <= neg_c * pos_c + (zer_c * (zer_c - 1)) / 2 + zer_c * (neg_c + pos_c)
  puts 0
else
  ans = []
  (0..neg_c-2).each do |i|
    (i+1..neg_c-1).each do |j|
      ans.push(neg[i] * neg[j])
    end
  end

  (0..pos_c-2).each do |i|
    (i+1..pos_c-1).each do |j|
      ans.push(pos[i] * pos[j])
    end
  end

  ans.sort!

  l = K - neg_c * pos_c + (zer_c * (zer_c - 1)) / 2
  puts ans[l -1]
end
