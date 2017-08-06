require 'rubygems'
# require 'sqlite3'
require 'dbi'

# include SQLite3
# db = Database.new("blog.db")
dbh = DBI.connect("DBI:SQLite3:blog.db")

# db.execute("SELECT * FROM sqlite_master") do |row|
dbh.select_all('select * from sqlite_master') do |row|
	puts "row"
	row.length.times do |i|
		print "#{i} = #{row[i]}\n"
	end
end
# db.close
dbh.disconnect

