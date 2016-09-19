puts "7 × 8 は？"
a = gets.chomp

while true
	if a == "56"
		puts "正解!"
		break;
	else
		puts "不正解!"
		a = gets.chomp
	end
end
