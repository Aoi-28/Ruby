File.open('text1.txt','w'){|f|
	f.write 'Hello World!!'
}

puts File.read('text1.txt')