N = gets.chop.to_i
S = gets.chop.split('')

r_count = S.count('R')
g_count = S.count('G')
b_count = S.count('B')

ans = r_count * g_count * b_count

(0..N).each do |i|
  (0..N).each do |d|
    j = i + d
    k = j + d

    break if k >= N

    if S[i] != S[j] && S[j] != S[k] && S[i] != S[k]
      ans -= 1
    end
  end
end

puts ans

# count = S.count
# ans = 0

# (0..count-3).each do |i|
#   (i+1..count-2).each do |j|
#     next if S[i] == S[j]
#     (j+1..count-1).each do |k|
#       next if j - i == k - j
#       a = S[i]
#       b = S[j]
#       c = S[k]
#       if b != c && a != c
#         ans += 1
#       end
#     end
#   end
# end

# puts ans
