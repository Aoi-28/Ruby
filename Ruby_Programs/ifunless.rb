puts "1: if 2: unless"
a = gets.to_i

if a == 1 then
	puts "1: true"
	i = gets.to_i
	if i == 1 then
		puts "true"
	else 
		puts "false"
	end

elsif a == 2 then 
	puts "1: true"
	i = gets.to_i
	unless i == 1 then 
		puts "false"
	else 
		puts "true"
	end
end