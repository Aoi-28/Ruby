require 'erb'
def foo
	a = "hello"
	erb = ERB.new("aの中身は <%= a %>です。")
	puts erb.result(binding)
end

a = "Bye"
foo