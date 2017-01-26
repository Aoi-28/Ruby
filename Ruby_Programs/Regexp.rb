reg2 = /^ABC/
s2 = "ABCDEF"

puts "True" if reg2 =~ s2

URL = "http://www.google.com/"



puts $1 if %r|http://([^/]*)/| =~ URL
#=>リンクの取得などに使えそう


