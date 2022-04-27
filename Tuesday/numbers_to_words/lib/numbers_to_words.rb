class NumbersToWords 
	attr_accessor :number


	def initialize(number) 
		@number = number.to_i
		@words = {
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
		@scale = { 
			100 => "hundred",
			1000 => "thousand", 
			1000000 => "million"
		}
	end

	def numbers_to_words
       
		@words.each do |number, word|

			if @number/number == 1 && @number < 100
				return one_through_ninety_nine(number)
			#EVERYTHING AFTER
		elsif @number >= 100
			@scale.each do  |scale, word_scale|
				if @number%scale == 0 
					return "#{@words.fetch(@number/scale)} #{@scale.fetch(scale)}"
				else
					return "#{@words.fetch(@number/scale)} #{@scale.fetch(scale)} #{one_through_ninety_nine(@number % scale)}"
				end
			end
		end
	end
end




def one_through_ninety_nine(number)
	if @number%number == 0 
		return @words.fetch(@number) 
	elsif @number%number != 0 
		return "#{@words.fetch(@number - @number%number)} #{@words.fetch(@number%number)}"
	end
end

end




puts "Enter your number here!"

number = gets.strip 

puts  NumbersToWords.new(number).numbers_to_words




