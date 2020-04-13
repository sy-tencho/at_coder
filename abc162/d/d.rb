N = gets.chop.to_i
S = gets.chop.split('')

count = S.count
ans = 0

(0..count-3).each do |i|
  (i+1..count-2).each do |j|
    next if S[i] == S[j]
    (j+1..count-1).each do |k|
      next if j - i == k - j
      a = S[i]
      b = S[j]
      c = S[k]
      if b != c && a != c
        ans += 1
      end
    end
  end
end

puts ans
