p Dir.pwd
unless(Dir.exist?("./Test"))
Dir.mkdir("./Test")
end
#Dir.rmdir("Test")
Dir.chdir("./Test")
p Dir.pwd

file = File.open("Test.txt","w")
file.write("HelloWorld")
file.close
