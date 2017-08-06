MN = gets.split(" ")
m = Array.new

MN[0].to_i.times do |i|
    m[i] = gets.to_i
end

# p MN
# p m

syou = MN[1].to_i/m[0]
amari = MN[1].to_i%m[0]
i = 0
p syou
p amari


for i in 0..MN[0].to_i-1 do
    s = MN[1].to_i/m[i]
    a = MN[1].to_i%m[i]
    p s
    p a

    if syou < s && amari > a
        syou = s
        amari = a
        num = i
        p num+1
    end
end

p num