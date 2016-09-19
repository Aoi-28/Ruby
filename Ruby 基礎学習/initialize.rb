class Apple
	def initialize(sweetness)
		@sweetness = sweetness
	end

	def sweetness
		@sweetness
	end
end

a = Apple.new(10)
b = Apple.new(5)
c = Apple.new(1)

p a.sweetness
p b.sweetness
p c.sweetness
