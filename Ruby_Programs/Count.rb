def count(kotae, ans)
    count = 0
    kotae.length.times do |i|
        if kotae[i] == ans[i]
            count = count+1
        end
    end
    
    return count
end


N = gets.to_i
kotae = Array.new
ans = Array.new
k = Array.new
a = Array.new

N.times do
    tmp = gets.split(" ")
    kotae << tmp[0]
    ans << tmp[1]
end

point = 0
N.times do|i|
    k = kotae[i].split("")
    a = ans[i].split("")
    if k.length != a.length
        point = point        
    elsif count(k, a) == k.length-1
        point = point+1
    elsif count(k, a) <= k.length-2
        point = point
    else
        point = point+2
    end
end

p point