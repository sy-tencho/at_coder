a = gets.chop.split.map(&:to_i)
puts a.inject(:+) >= 22 ? 'bust' : 'win'
 