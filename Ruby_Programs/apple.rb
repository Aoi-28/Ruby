class Apple
	def sweetness
		rand(10)+1
	end
end

#インスタンスを生成。これがないとsweetnessメソッドは使えない。
o1 = Apple.new
o2 = Apple.new
o3 = Apple.new

#実際のインスタンスメソッド。クラスのインスタンス生成を行って初めて使える。
p o1.sweetness
p o2.sweetness
p o3.sweetness