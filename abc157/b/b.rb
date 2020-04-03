a_1 = gets.chop.split(' ').map(&:to_i)
a_2 = gets.chop.split(' ').map(&:to_i)
a_3 = gets.chop.split(' ').map(&:to_i)

N = gets.chop

b = readlines.map(&:chomp).map(&:to_i)

container = []

container.push([a_1[0], a_2[0], a_3[0]])
container.push([a_1[1], a_2[1], a_3[1]])
container.push([a_1[2], a_2[2], a_3[2]])
container.push([a_1[0], a_1[1], a_1[2]])
container.push([a_2[0], a_2[1], a_2[2]])
container.push([a_3[0], a_3[1], a_3[2]])
container.push([a_1[0], a_2[1], a_3[2]])
container.push([a_1[2], a_2[1], a_3[0]])

ans = 'No'
container.each do |x|
  flag = true
  x.each do |y|
    unless b.include?(y)
      flag = false
    end
  end

  if flag == true
    ans = 'Yes'
    break
  end
end

puts ans
