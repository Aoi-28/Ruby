tag = gets.split(" ")
str = gets.chomp
strs = Array.new
reg = Regexp.new(tag[0])

count = str.scan(reg).size
i = 0
count.times do
i = str.index(tag[0], i)+tag[0].length
s = str [i..str.index(tag[1], i)-1] 
if s != ""
    puts s
else
    puts "<blank>"
end
end

