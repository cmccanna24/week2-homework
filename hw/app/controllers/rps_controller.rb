class RpsController < ApplicationController

	def game
		get_images
	end

	def result
		@computer = ["r", "p", "s"].sample
		@user_choice = params["user"]
		@computer_choice = @computer[0]
		if(@computer_choice == "r")
			@computer_choice = "rock"
		elsif(@computer_choice == "p")
			@computer_choice = "paper"
		else
			@computer_choice = "scissors"
		end

		get_images
		if(@user_choice == "rock")
			if(@computer_choice == "scissors")
				win @rock_image_url
			elsif(@computer_choice == "paper")
				lose @paper_image_url
			else
				tie @rock_image_url
			end
		elsif(@user_choice == "paper")
			if(@computer_choice == "rock")
				win @paper_image_url
			elsif(@computer_choice == "scissors")
				lose @scissors_image_url
			else
				tie @paper_image_url
			end
		else
			if(@computer_choice == "paper")
				win @scissors_image_url
			elsif(@computer_choice == "rock")
				lose @rock_image_url
			else
				tie @scissors_image_url
			end
		end
	end

	def get_images
		@rock_image_url = "http://megaicons.net/static/img/icons_sizes/8/178/256/rock-paper-scissors-rock-icon.png"
		@paper_image_url = "http://megaicons.net/static/img/icons_sizes/8/178/256/rock-paper-scissors-paper-icon.png"
		@scissors_image_url = "http://www.veryicon.com/icon/ico/System/Icons8%20Metro%20Style/Rock%20Paper%20Scissors%20Scissors.ico"
	end

	def win (image)
		@title = "Congrats! You won!"
		@winning_image = image
	end

	def lose (image)
		@title = "Oh no, you lost!"
		@winning_image = image
	end

	def tie (image)
		@title = "It's a tie!"
		@winning_image = image
	end

end
