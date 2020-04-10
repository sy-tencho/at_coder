N, K = gets.chop.split.map(&:to_i)
P = gets.chop.split(' ').map(&:to_f)


exp = []
hash = {}

# key, value型でデータをたないと実行時間が 200ms -> 2000ms くらいまで増えて通らない
P.each do |i|
  hash[i] ||= (1..i).inject(:+) / i
  exp.push(hash[i])
end

memo = exp[0..K-1].inject(:+)
ans = [memo]

(K..N-1).each do |i|
  memo += (exp[i] - exp[i-K])
  ans.push(memo)
end

puts ans.max
