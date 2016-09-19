

puts "10時までの勤務時間"
a = gets.to_i
puts "10時以降の勤務時間"
b = gets.to_i
puts "10時以前の残業時間"
c = gets.to_i
puts "10時以降の残業時間"
d = gets.to_i

sum = 984*a+984*1.25*(b+c)+984*1.5*d

puts sum