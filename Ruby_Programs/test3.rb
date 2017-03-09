#初期位置
tmp = gets.split(" ")
x = tmp[0].to_i
y = tmp[1].to_i
#移動するマス数
tmp = gets.split(" ")
front = tmp[0].to_i
right = tmp[1].to_i
back = tmp[2].to_i
left = tmp[3].to_i
#移動する回数
N = gets.to_i

#命令
status = Array.new #命令状態(移動or方向転換)
sight = Array.new #方向
N.times do |i|
tmp = gets.split(" ")
status[i] = tmp[0]
sight[i] = tmp[1]
end

state = "F"
N.times do |i|
if status[i] == "t"
    if state == "F"
        state = sight[i]
    elsif state == "R"
        if sight[i] == "R"
            state = "B"
        elsif sight[i] == "B"
            state = "L"
        elsif sight[i] == "L"
            state = "F"
        end
    elsif state == "B"
        if sight[i] == "R"
            state = "L"
        elsif sight[i] == "B"
            state = "F"
        elsif sight[i] == "L"
            state = "R"
        end
    elsif state == "L"
        if sight[i] == "R"
            state = "F"
        elsif sight[i] == "B"
            state = "R"
        elsif sight[i] == "L"
            state = "B"
        end
end
elsif status[i] == "m" #移動
    if state == "F"
        if sight[i] == "F"
            y = y+front
        elsif sight[i] == "R"
            x = x+right
        elsif sight[i] == "B"
            y = y-back
        elsif sight[i] == "L"
            x = x-left
        end
    elsif state == "R"
        if sight[i] == "F"
            x = x+front
        elsif sight[i] == "R"
            y = y-right
        elsif sight[i] == "B"
            x = x-back
        elsif sight[i] == "L"
            y = y+left
        end
    elsif state == "B"
        if sight[i] == "F"
            y = y-front
        elsif sight[i] == "R"
            x = x-right
        elsif sight[i] == "B"
            y = y+back
        elsif sight[i] == "L"
            x = x+left
        end
    elsif state == "L"
        if sight[i] == "F"
            x = x-front
        elsif sight[i] == "R"
            y = y+right
        elsif sight[i] == "B"
            x = x+back
        elsif sight[i] == "L"
            y = y-left
        end
    end
end
end
    
print "%d " % [x]
puts "%d" % [y]
