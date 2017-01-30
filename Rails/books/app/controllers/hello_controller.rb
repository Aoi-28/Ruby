class HelloController < ApplicationController
	def index
		render text:"HelloWorld!"
	end

	def view
		@msg = "アクションメソッド"
	end
end
