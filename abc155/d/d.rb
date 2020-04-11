N, K = gets.chop.split.map(&:to_i)
A = gets.chop.split(' ').map(&:to_i)

neg_arr = []
zer_arr = []
pos_arr = []

A.each do |i|
  if i == 0
    zer_arr.push(i)
  elsif i > 0
    pos_arr.push(i)
  else
    neg_arr.push(i)
  end
end

neg_count = neg_arr.count
zer_count = zer_arr.count
pos_count = pos_arr.count

neg_ans_count = neg_count * pos_count
zer_ans_count = zer_count * (neg_count + pos_count) + (zer_count * (zer_count - 1) / 2)
pos_ans_count = (neg_count * (neg_count - 1) / 2) + (pos_count * (pos_count - 1) / 2)

total_count = neg_ans_count + zer_ans_count + pos_ans_count
# test
# puts total_count == (N * (N - 1) / 2)

def comb(arr)
  tmp = []
  if arr.count == 3
    tmp.push(arr[0] * arr[1])
    return tmp
  else
    (0..(arr.count - 2)).each do |i|
      ((i+1)..(arr.count - 1)).each do |j|
        tmp.push(arr[i] * arr[j])
      end
    end
    return tmp
  end
end


if K <= neg_ans_count
  neg_ans_arr = []
  neg_arr.each do |n|
    pos_arr.each do |p|
      neg_ans_arr.push(n * p)
    end
  end
  puts neg_ans_arr[-1]
elsif K > neg_ans_count && K < neg_ans_count + zer_ans_count
  puts 0
else
  pos_ans_arr = []
  
  unless pos_arr.count < 2
    pos_ans_arr.concat(comb(pos_arr))
  end

  unless neg_arr.count < 2
    pos_ans_arr.concat(comb(neg_arr))
  end

  k = K - neg_ans_count - zer_ans_count - 1
  pos_ans_arr.sort!
  puts pos_ans_arr[k]
end
