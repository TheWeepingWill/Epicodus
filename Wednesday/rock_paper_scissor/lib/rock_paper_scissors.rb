class RPS 
	def outcome(hand1, hand2)
		return "tie" if hand1 == hand2

		
		if hand1 == 'scissors' && hand2 == 'paper'
			true
		elsif hand1 == 'rock' && hand2 == 'scissors'
			true
		elsif hand1 == 'paper' && hand2 == "rock"
			true
		else 
			false
		end
	end
end