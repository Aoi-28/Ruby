require 'erb'
erb = ERB.new("こんにちは。今年は<%= Time.new.year %>年です。")
erb.run