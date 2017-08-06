N = gets.to_i
c = Array.new

N.times do |i|
    c[i] = gets.split(" ")
end

qt = gets.split(" ")
qt[1] = qt[1].split(":")
ba = 0

N.times do |i|
    if(c[i][0] == qt[0]) then
        ba = c[i][1]
    end
end

N.times do |i|
    hour = qt[1][0].to_i-(ba.to_i-c[i][1].to_i)
    if hour >= 24 then
        hour -= 24
    end
    if hour < 0 then
        hour += 24
    end
    
    min = qt[1][1]
    puts "%02d:%02d" % [hour, min]
end