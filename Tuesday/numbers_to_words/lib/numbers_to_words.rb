class Integer

	WORDS = {
		90 => "ninety",
		80 => "eighty",
		70 => "seventy",
		60 => "sixty", 
		50 => "fifty",
		40 => "forty", 
		30 => "thirty", 
		20 => "twenty",
		19 => "nineteen",
		18 => "eighteen", 
		17 => "seventeen",
		16 => "sixteen",
		15 => "fifteen",
		14 => "fourteen",
		13 => "thirteen",
		12 => "twelve",
		11 => "eleven",
		10 => "ten",
		9 => "nine",
		8 => "eight",
		7 => "seven",
		6 => "six",
		5 => "five",
		4 => "four",
		3 => "three",
		2 => "two",
		1 => "one"
	}
	SCALE = { 
		100 => "hundred",
		1000 => "thousand", 
		1000000 => "million",
		1000000000 => "billion",
		1000000000000 => "trillion"
	}


	def numbers_to_words
		WORDS.each do |number, word|
			if self/number == 1 && self < 100 
				if self%number == 0 
					return WORDS.fetch(self) 
				elsif self%number != 0 
					return "#{WORDS.fetch(self - self%number)} #{WORDS.fetch(self%number)}"
				end

			elsif self >= 100 
				SCALE.each do  |scale, scale_rung|
					next if scale == 100 && self/scale >= 10 || self/scale > 999
					if self%scale == 0
						return "#{(self/scale).numbers_to_words} #{SCALE.fetch(scale)}"
					else
						return "#{(self/scale).numbers_to_words} #{SCALE.fetch(scale)} #{(self%scale).numbers_to_words}"
					end
				end
			end
		end
	end




end




puts "Enter your number here!"

number = gets.strip.to_i 

puts  number.numbers_to_words




