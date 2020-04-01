input = gets.chop.to_i

a = input / 500 * 1000
b = input % 500
c = b / 5 * 5

puts a + c