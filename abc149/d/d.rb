n, k = gets.chop.split.map(&:to_i)
R, S, P = gets.chop.split.map(&:to_i)
t = gets.chop.chars

scores = { r: P, s: R, p: S }
ans = 0

(0..n-1).each do |i|
  if t[i] == t[i - k] && i >= k
    t[i] = nil
  end

  unless t[i].nil?
    ans += scores[t[i].to_sym]
  end
end

puts ans

# iとi-k番目が同じ場合どこで勝っても点数は同じなので最初から勝っておくとscoreは最大化される
