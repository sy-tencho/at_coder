K = gets.chop.to_i

$hash = {}

def gcb(a, b)
  return a if b == 0
  gcb(b, a % b)
end

# def hoge(a, b, c)
#   arr = [a, b, c].sort!.map(&:to_s).join('-')
#   if $hash[arr]
#     return $hash[arr]
#   else
#     x = gcb(a, b)
#     y = gcb(x, c)
#     $hash[arr] = y
#     return y
#   end
# end

def hoge(a, b, c)
  x = gcb(a, b)
  y = gcb(x, c)

  return y
end

ans = []

(1..K).each do |i|
  (i..K).each do |j|
    (j..K).each do |k|
      if i == j && j == k && i == k
        ans.push(hoge(i, j, k))
      elsif i == j || j == k || i == k
        ans.push(hoge(i, j, k) * 3)
      else
        ans.push(hoge(i, j, k) * 6)
      end
    end
  end
end

puts ans.inject(:+)
