class DiceController < ApplicationController
	def game
	end
	
	def roll
		@first_die = [1, 2, 3, 4, 5, 6].sample(1)
		@second_die = [1, 2, 3, 4, 5, 6].sample(1)
		@result = @first_die[0] + @second_die[0]

		if (@result == 7 || @result == 11)
			win
		elsif (@result == 2 || @result == 12)
			lose
		else
			@answer = "Your goal is now #{@result}. Now try to roll a #{@result} again before you roll a 7"
			@button_text = "Roll The Dice"
			@next_page = "/dice/goal"
		end 
	end

	def goal
		@first_die = [1, 2, 3, 4, 5, 6].sample(1)
		@second_die = [1, 2, 3, 4, 5, 6].sample(1)
		@goal = params["number"].to_i

		@result = @first_die[0] + @second_die[0]
		# goal = @goal.to_i
		if (@result == 7)
			lose
		elsif (@result == @goal)
			win
		else
			@answer = "Your goal is #{@goal} but you rolled a #{@result}. You can roll again."
			@button_text = "Roll Again"
			@next_page = "/dice/goal"
		end
	end

	def win
		@answer = "You Win!"
		@button_text = "Start Over"
		@next_page = "/dice"
	end

	def lose
		@answer = "You Lose!"
		@button_text = "Start Over"
		@next_page = "/dice"
	end


end






