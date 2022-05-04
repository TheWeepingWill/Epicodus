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


puts "Welcome to Find and Replace"

puts "We'll need a word or phrase to work with 
Put in anything that comes to mind ;)"

word_or_phrase = gets.strip.downcase

puts "Great now we need to you to give TWO inputs 
FIRST the letter or word you would like replaced from your word or phrase
SECOND is whatever you would like to replace your first input with"

 arguments = gets.strip.downcase.split(" ")

 argument1 = arguments[0]
 argument2 = arguments[1]

 puts word_or_phrase.find_and_replace(argument1, argument2)