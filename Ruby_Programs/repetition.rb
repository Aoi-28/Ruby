puts "1: timesメソッド 2: for文 3: while文 
		4: until文 5: eachメソッド　6: loopメソッド"

n = gets.to_i

if n == 1 then
	#timesメソッド
	puts "繰り返しの回数"
	c = gets.to_i
	c.times do |i|
		puts "#{i+1}回目" #インデックスを表示する際の別の方法
	end

elsif n == 2 then
	#for文
	ary = ["one","two","three"]#配列を用意する。
	for i in ary do
		puts i
	end

elsif n == 3 then
	#while文
	i = 1
	while true do
		puts i
		i+=1
		if i == 10 then
			puts "BREAK"
			break#10まで表示したかったらi+=1を後ろに持ってくる。
		end
	end

elsif n == 4 then
	i = 1
	until false do
		puts i
		i+=1
		if i == 10 then
			puts "BREAK"
			break
		end
	end

elsif n == 5 then
	ary = ["one","two","three"]
	ary.each do|s|
		puts s
	end
	
else
	i = 1
	puts "止めるにはctrl+Cキーを押す。"
	
	sleep(4)
	puts i
	loop do
		puts i+=1
		
	end
end