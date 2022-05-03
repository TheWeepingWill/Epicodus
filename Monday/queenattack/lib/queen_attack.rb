# frozen_string_literal: true 
class Array

	#is called on an array consisting of two coordinates and based off the queens
	#  position (also an array of coordinates) determines whether or not she can attack that piece
	def queen_attack?(enemy_coordinate)
		return nil if enemy_coordinate.count != 2 || self.count != 2
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

puts "Please input two numbers as the Queens coordinates"

queen = gets.strip.to_s.split("").map { |coordinate| coordinate.to_i}

until queen.count == 2 
	puts "Please input two coordinates for the queen, the first for the X axis
	and the second for the Y axis"
	queen = gets.strip.to_s.split("").map { |coordinate| coordinate.to_i}
end  

puts "Now input two more coordinates as the opposing piece..."
sleep 1
puts "I will let you know if this piece can be attacked by the Queen"

enemy = gets.strip.to_s.split("").map { |coordinate| coordinate.to_i}

until enemy.count == 2 
	puts "Please input two coordinates for the opposing piece, the first for the X axis
	and the second for the Y axis"
	enemy = gets.strip.to_s.split("").map { |coordinate| coordinate.to_i}
end  



if queen.queen_attack?(enemy) == true
	puts "This piece can be attacked by the Queen!"
elsif queen.queen_attack?(enemy) == false
	puts "This piece is safe from the Queen!"
else
	puts "Please input correct coordinates"
end



