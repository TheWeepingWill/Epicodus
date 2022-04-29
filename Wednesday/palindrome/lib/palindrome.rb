class String
	def palindrome?
		self.downcase == self.downcase.reverse 
	end
	def hard_palindrome?
		string_array = self.split("")
		palindrome_array = []
		reverse_array = []
		until string_array == []
			  palindrome_array.unshift(string_array[-1])
		      reverse_array << string_array.pop 
		  end
		  reverse_array.join("") == palindrome_array.join("")
	end
end

