# frozen_string_literal: true 
def allergies(total_score)
	if total_score > 255 || total_score < 1 then return "This is an invalid number please choose a number between 1 and 255"
	end
	returned_allergies = []
	allergies = {
		"eggs"    =>     1,
		"peanuts"   =>   2,
		"shellfish"   => 4,
		"strawberries" => 8,
		"tomatoes"     => 16, 
		"chocolate"   => 32, 
		"pollen"      => 64, 
		"cats"       =>  128
	}

	allergies.each do |allergen, individual_score|
		if total_score/individual_score == 1 && total_score%individual_score == 0 
			return  returned_allergies << allergen
		elsif total_score/individual_score == 1 && total_score%individual_score > 0 
			return returned_allergies.unshift(allergen, allergies(total_score%individual_score))
		end
	end
	returned_allergies
end


puts "Please input a number"

input = gets.strip.to_i

puts allergies(input)




