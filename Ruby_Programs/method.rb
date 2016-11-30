#メソッド
def method
	print "メソッドです\n"
end

def nonmethod
	print "メソッドではないんです\n"
end

def foo
	yield 50
end


method()
nonmethod()
#ブロック付きメソッド
foo do |i|
	while i > 0
		i /= 2
		puts "#{i}\n"
	end
	puts "0以下"
end

