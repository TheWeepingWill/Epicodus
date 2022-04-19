class Array

	#is called on an array consisting of two coordinates and based off the queens
	#  position (also an array of coordinates) determines whether or not she can attack that piece
	def queen_attack(enemy_coordinate) 
		# Returns true if the queen can attack horizontally
		if self[0] == enemy_coordinate[0]
			true
		# Returns true if the queen can attack vertically
		elsif self[1] == enemy_coordinate[1]
			true
		# Returns true if the queen can attack Diagonally 
		elsif (self[0] - enemy_coordinate[0]).abs == (self[1] - enemy_coordinate[1]).abs 
		   true
		# Returns false if none of the three rules apply
		else
			false
		end
	end
end

