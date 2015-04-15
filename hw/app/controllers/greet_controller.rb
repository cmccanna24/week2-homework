class GreetController < ApplicationController
	def hello
		if(params.has_key?(:salutation))
			@sal = params["salutation"]
		else
			@sal = "Hello"
		end
	end
end
