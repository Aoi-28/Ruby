def check(train, hm, i)
	if hm[i][0].to_i == 8 && train == 60  then
		i = i-1
		if hm[i][0].to_i != 7
		check(train, hm[i][0], i)
		end
	end
	return i
end

abc = gets.split(" ")
N = gets.to_i
hm = Array.new
N.times do |i|
    hm[i] = gets.split(" ")
end

train = abc[1].to_i+abc[2].to_i

i = N-1

loop{
	i = check(train, hm, i)
	if train == 60 then
		train = 0
	end
	lastime = hm[i][1].to_i+train #最終列車
    if lastime < 60 then
    	hour = hm[i][0]
    	min = hm[i][1].to_i-abc[0].to_i
        if min < 0 then
        	hour = hm[i][0].to_i-1
        	min = 60+min
        end
        puts "%02d:%02d" % [hour,min]
        break
    end
    i = i-1
}
