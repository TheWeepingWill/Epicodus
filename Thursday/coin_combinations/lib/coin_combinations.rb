# frozen_string_literal: true 
class CoinCombo 
	COIN = {
		"quarter" => 25,
		"dime" => 10,
		"nickel" => 5,
		"penny" => 1
	}
	PLURALS = {
		"quarters" => 25,
		"dimes" => 10,
		"nickels" => 5,
		"pennies" => 1
	}

	def coin_combinations(cents)
		return "No coins" if cents == 0 

		if cents < 5 
			if cents/COIN["penny"] == 1
				return "#{cents/COIN["penny"]} #{COIN.key(1)}"
			else
				return "#{cents/COIN["penny"]} #{PLURALS.key(1)}"
			end
		elsif cents == 5 
			return "#{cents/COIN["nickel"]} #{COIN.key(5)}"
		elsif cents < 10 
			return "#{cents/COIN["nickel"]} #{COIN.key(5)} #{coin_combinations(cents%COIN["nickel"])}"
		elsif cents == 10 
			return "#{cents/COIN["dime"]} #{COIN.key(10)}"
		elsif cents < 20
			return "#{cents/COIN["dime"]} #{COIN.key(10)} #{ coin_combinations(cents%10)}"
		elsif cents >= 20 && cents < 25
			if cents%10 == 0 
				"#{cents/COIN["dime"]} #{PLURALS.key(10)}"
			else
				return "#{cents/COIN["dime"]} #{PLURALS.key(10)} #{ coin_combinations(cents%10)}"
			end
		elsif cents == 25 
			return "#{cents/COIN["quarter"]} #{COIN.key(25)}"
		elsif cents > 25 && cents < 50
			return "#{cents/COIN["quarter"]} #{COIN.key(25)} #{ coin_combinations(cents%25)}"
		elsif cents >= 50
			if cents%25 == 0 
				return "#{cents/COIN["quarter"]} #{PLURALS.key(25)}"
			else
				return "#{cents/COIN["quarter"]} #{PLURALS.key(25)} #{ coin_combinations(cents%25)}"
			end
		end


	end
end

puts "Enter a amount of Cents"
cents = gets.strip.to_i

puts CoinCombo.new.coin_combinations(cents)