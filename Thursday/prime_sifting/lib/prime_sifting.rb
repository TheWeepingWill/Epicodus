# frozen_string_literal: true 
class Integer

	def primes

		all = (2..self).to_a
		prime = 2

		while prime < self
			all.each do |number|
				if number%prime == 0 && number/prime > 1
					all.delete(number)
				end		
			end
			prime += 1	
		end
		return all

	end


end

puts "Enter a number"

number = gets.strip.to_i

number.primes