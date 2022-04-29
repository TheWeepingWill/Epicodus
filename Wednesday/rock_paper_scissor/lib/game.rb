# frozen_string_literal: true 
class Game
	def human_hand
        gets.to_s.downcase.strip
	end
	def bot_hand(bot_hand_array)
         bot_hand_array.sample
	end
	def replay
			puts "Would you like to play again? Press [Y] to continue, or any key to escape."

		input = gets.to_s.strip.upcase 

		if input == 'Y'
			self.play
		else
			'Goodbye'
		end
	end
end