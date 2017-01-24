a = Array.new(100)#要素数100の配列を定義
for i in 0..99 do#繰り返し格納
  a[i] = i+1
  #p a[i]
end

a2 = Array.new
for i in 0..99 do
  a2[i] = a[i]*100
end

#p a2

k = -1#インクリメントができないため
a3 = Array.new
#p a3

for i in 0..99 do
  if a[i] % 3 == 0 then
    a3[k+=1] = a[i]
  end
end

#p a3

a3.sort()

#p a3

a4 = Array.new

for i in 0..99 do
  a4[i] = a.pop
end

# p a4
sum = 0
for i in 0..99 do
  sum = sum+a4.pop 
end
# p sum

ary = Array.new(100)#要素数100の配列を定義
for i in 0..99 do#繰り返し格納
  ary[i] = i+1
  #p a[i]
end

p ary
result = Array.new
10.times do |i|
    result << ary[i*10..i*10+9]
end
p result


