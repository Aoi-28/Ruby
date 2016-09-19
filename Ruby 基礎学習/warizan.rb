#入力メソッド
def nyuuryoku
	a = gets.to_i
	b = gets.to_i
	c = warizan(a,b)
	return c
end

#割り算メソッド
def warizan(a,b)
	if b == 0
		puts "割る数が0です。"
		sleep 2
		puts "もう一度入力してください。"
		nyuuryoku
	else 
		return a/b
	end
end

puts "割り算をします。入力してください。"
d = nyuuryoku
puts "計算結果は#{d}です。"