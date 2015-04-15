class ContactController < ApplicationController
	def form
	end

	def submitted
		@firstname = params["firstname"]
		@lastname = params["lastname"]
	end
end