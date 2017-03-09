a = gets.split(" ")

if a[4] == "x" then
    if a[1]=="+" then
        puts a[0].to_i+a[2].to_i
    else
        puts a[0].to_i-a[2].to_i
    end
else
    if a[1]=="+" then
        if a[0] == "x" then
            puts a[4].to_i-a[2].to_i
        else
            puts a[4].to_i-a[0].to_i
        end
    else
        if a[0] == "x" then
            puts a[4].to_i+a[2].to_i
        else
            puts -(a[4].to_i-a[0].to_i)
        end
    end

        
end