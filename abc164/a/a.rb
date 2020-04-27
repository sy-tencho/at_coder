s, w = gets.chop.split.map(&:to_i)
puts s > w ? 'safe' : 'unsafe'
 