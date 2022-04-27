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

            #Iterates over each letter and applies the "leetspeak" rules
            letters.each_with_index do |letter, index| 
            	if letter == 'e'
            		leetspeak_letters << '3'
            	elsif letter == 'o'
            		leetspeak_letters << '0'
            	elsif letter == 'I'
            		leetspeak_letters << '1'
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




