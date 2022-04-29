# frozen_string_literal: true 
class String
	def find_and_replace(find, replace)
		self.gsub(find, replace)
	end
end