# frozen_string_literal: true 
require_relative "spec_helper"
require 'numbers_to_words'
require 'rack/test'

RSpec.describe "Numbers To Words" do 
	include Rack::Test::Methods

	

	it "Class initializes with integer" do
		expect { 1.numbers_to_words }.not_to raise_error
	end

	# it "Fails when given anything but an integer" do 
	# 	expect(NumbersToWords.new('[]').numbers_to_words).to eq( "Whoops! This was either 'zero' not an integer... Please input an Integer greater than 'zero'")
	# end

# #SINGLE DIGIT TESTS
it "Returns 'one' for '1'"  do 
	expect(1.numbers_to_words).to eq("one")
end

it "Returns 'nine' for '9'"  do 
	expect(9.numbers_to_words).to eq("nine")
end	


# #TEEN TESTS
   it "Returns 'Eleven' for '11'"  do 
   			expect(11.numbers_to_words).to eq("eleven")
	end
		it "Returns 'nineteen' for '19'"  do 
					expect(19.numbers_to_words).to eq("nineteen")
	end


# #TWENTY THROUGH NINETY
    it "Returns 'Twenty' for '20'"  do 
    			expect(20.numbers_to_words).to eq("twenty")
	end
	 it "Returns 'forty' for '40'"  do 
    			expect(40.numbers_to_words).to eq("forty")
	end
	 it "Returns 'Twenty nine' for '29'"  do 
    			expect(29.numbers_to_words).to eq("twenty nine")
	end
	it "Returns 'ninety nine' for '99'"  do 
    			expect(99.numbers_to_words).to eq("ninety nine")
	end

# #HUNDREDS TESTS
it "Returns 'one hundred' for '100'"  do 
    	
		expect(100.numbers_to_words).to eq("one hundred")
	end
	it "Returns 'one hundred and twenty' for '120'"  do 
    	
		expect(120.numbers_to_words).to eq("one hundred twenty")
	end
	it "Returns 'one hundred and forty one' for '141'"  do 
    	
		expect(141.numbers_to_words).to eq("one hundred forty one")
	end
# 	it "Returns 'one hundred and ten' for '110'"  do 
#     	
# 		expect(number.numbers_to_words).to eq("one hundred and ten")
# 	end
# 	it "Returns 'one hundred and nineteen' for '119'"  do 
#     	
# 		expect(number.numbers_to_words).to eq("one hundred and nineteen")
# 	end
# 		it "Returns 'one hundred and nine' for '109'"  do 
#     	
# 		expect(number.numbers_to_words).to eq("one hundred and nine")
# 	end

# #THOUSANDS TESTS
	it "Returns 'one thousand' for '1000'"  do 
    	
		expect(1000.numbers_to_words).to eq("one thousand")
	end
	it "Returns 'ten thousand' for '10000'"  do 
    	
		expect(10000.numbers_to_words).to eq("ten thousand")
	end
# 	it "Returns 'one hundred thousand' for '100000'"  do 
#     	
# 		expect(number.numbers_to_words).to eq("one hundred thousand")
# 	end
	it "Returns 'one thousand and one' for '1001'"  do 
    	
		expect(1001.numbers_to_words).to eq("one thousand one")
	end

	it "Returns 'one twenty thousand and one' for '120001'"  do 
    	
		expect(120001.numbers_to_words).to eq("one hundred twenty thousand one")
	end



# #ERROR 
#    it "Returns 'Can't go this high'"  do 
# 		expect(number.numbers_to_words).to eq("Can't go this high")
# 	end
	
end
