# frozen_string_literal: true 
class String
	def palindrome?
		self.downcase == self.downcase.reverse 
	end
	def hard_palindrome?

		
		palindrome_array = self.split("")
		reverse_array = []


		palindrome_array.each do |letter|
			reverse_array.unshift(letter) 
		end



		reverse_array.join("") == palindrome_array.join("")
	end
end


puts "Welcome to Palindrome!"
puts "Enter any word or phrase and I'll tell you if its a Palindrome!"

input = gets.strip.to_s
processed_input = input.gsub(" ", "")

if processed_input.palindrome? == true 
	puts "It's a palindrome!"
else
	puts "It is not a palindrome!"
end



