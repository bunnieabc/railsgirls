test = { :gg => 123, :gg2 => 222, :gg3=>333}
puts test[:gg]
test.each do |tt,value|
	puts "#{tt} is #{value}"
end