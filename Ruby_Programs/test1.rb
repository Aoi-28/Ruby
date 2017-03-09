tor1 = gets.split(" ")
tor2 = gets.split(" ")

p tor1
p tor2

score = gets.split(" ")

winner1 = 0
winner2 = 0

if score[tor1[0].to_i-1] < score[tor1[1].to_i-1] then
    winner1 = tor1[0].to_i
    elsif(score[tor1[0].to_i-1] > score[tor1[1].to_i-1]) 
        winner1 = tor1[1].to_i
    end

if score[tor2[0].to_i-1] < score[tor2[1].to_i-1] then
    winner2 = tor2[0].to_i
    elsif(score[tor2[0].to_i-1] > score[tor2[1].to_i-1]) 
        winner2 = tor2[1].to_i
    end

score2 = gets.split(" ")


if(score2[0] < score2[1]) then
    if(winner1 < winner2)
        puts winner1
        puts winner2
    else
        puts winner2
        puts winner1
    end
elsif(score2[0] > score2[1])then
    if(winner1 < winner2)
        puts winner2
        puts winner1
    else
        puts winner1
        puts winner2
    end
end
