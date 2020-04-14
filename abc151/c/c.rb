N, M = gets.chop.split.map(&:to_i)
lines = []
while line = gets
  lines << line.chomp.split(' ')
end

hash = {}
#{1: [ture, 0]}

lines.each do |p|
  hash[p[0]] ||= [false, 0]

  if hash[p[0]][0]
    next
  else
    if p[1] == 'WA'
      hash[p[0]][1] += 1
    else
      hash[p[0]][0] = true
    end
  end
end

ac = 0
wa = 0

hash.each do |i|
  if i[1][0]
    ac += 1
    wa += i[1][1]
  end
end

print ac, ' ', wa
