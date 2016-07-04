require "./module_test"

class Dog
	include Just_test
end

class Cat
	puts "I am cat"
	include Just_test
	
end

class GG
	def say 
		puts"GG"
	end
end
p1 = Cat.new
p2 = Dog.new
p3 = GG.new.say

p1.say
p2.say