N, M = gets.chop.split.map(&:to_i)

array = Array.new(N)

M.times {
  s, c = gets.chop.split.map(&:to_i)
  if array[s - 1] && array[s - 1] != c
    puts '-1'
    exit
  end

  array[s - 1] = c
}

if array.count > 1 && array[0] == 0
  puts '-1'
  exit
end

if array.count > 1 && array[0].nil?
  array[0] = 1
end

ans = array.reduce('') { |acc, i|
  if i
    acc = acc << i.to_s
  else
    acc = acc << '0'
  end
}

puts ans
