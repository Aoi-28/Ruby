def ti(hour)
    if hour >= 24 then
    hour = hour - 24
    end
end

time = gets.chomp!
tmp = time.split(" ")

date = tmp[0]
times = tmp[1]

tmp = date.split("/")

month = tmp[0]
day = tmp[1]

tmp = times.split(":")

hour = tmp[0]
min = tmp[1]


if(hour.to_i != 0)
while(hour.to_i > 23)
    hour = ti(hour.to_i)
    day = day.to_i+1
end
end
puts "%02d/%02d %02d:%02d" % [month, day, hour, min]