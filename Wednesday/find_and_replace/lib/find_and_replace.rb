# frozen_string_literal: true 


module FindandReplace
	def find_and_replace(find, replace)
		self.gsub(find, replace)
	end

	def find_and_replace_file(find, replace, file)
		file = File.open(file)
		file_data = file.readlines.map(&chomp)
		file_data.gsub(find, replace)
	end

end
class String
	include FindandReplace

end

class File
	include FindandReplace
end