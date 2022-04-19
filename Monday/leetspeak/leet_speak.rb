class String 
	def leetspeak 
		# splits string into words
		words = self.split(" ")
		#creates an array of words
		leetspeak = words.map do |word|
            # makes an accumulator for the changed words
            leetspeak_letters = []
            #splits the words into an array of letters 
            letters = word.split("")
            #Iterates over each letter and replaces certain letters with "leetspeak" letters
            letters.each_with_index do |letter, index| 
            	if letter == 'e'
            		leetspeak_letters << '3'
            	elsif letter == 'o'
            		leetspeak_letters << '0'
            	elsif letter == 'I'
            		leetspeak_letters << '1'
            	#If the letter is equal to 's' and IS NOT the first letter of a word, returns 'z'
            	elsif letter == 's' && index != 0
            		leetspeak_letters << 'z'
            	else
            		leetspeak_letters << letter
            	end
            end
            leetspeak_letters.join("")
        end
        leetspeak.join(" ")
    end
end


p "sers soys sIrs".leetspeak


