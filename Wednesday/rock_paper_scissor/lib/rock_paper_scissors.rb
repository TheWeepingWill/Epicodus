class RPS 
	def wins?(hand1, hand2)
		return false if hand1 == hand2


		if hand1 == "scissors" 
			false
		elsif hand1 == "rock" && hand2 == "paper"
			false
		else 
			true
		end
	end
end