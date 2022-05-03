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

