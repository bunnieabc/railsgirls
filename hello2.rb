class Person

	@@gggg = "GGGG"
	def initialize(name) #initialize是不可改變的建構式
		@name = name
	end

	def name
		@name
	end

	def type(word)
		puts "my name is, #{word}, #{@name}"
	end

	def say
		puts "#{@@gggg}"
	end
end

p1 = Person.new("OKOK")
p2 = Person.new("GGG2")

p1.type("How r U")
p2.type("CCC")
p1.say
puts p1.name

