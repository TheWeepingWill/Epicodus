require_relative "spec_helper"
require 'numbers_to_words'
require 'rack/test'

RSpec.describe "Numbers To Words" do 
	include Rack::Test::Methods

	it "Class initializes with integer" do
		expect { NumbersToWords.new(8).numbers_to_words }.not_to raise_error
	end

	# it "Fails when given anything but an integer" do 
	# 	expect(NumbersToWords.new('[]').numbers_to_words).to eq( "Whoops! This was either 'zero' not an integer... Please input an Integer greater than 'zero'")
	# end

# #SINGLE DIGIT TESTS
it "Returns 'one' for '1'"  do 
	number = NumbersToWords.new(1)
	expect(number.numbers_to_words()).to eq("one")
end

it "Returns 'nine' for '9'"  do 
	number = NumbersToWords.new(9)
	expect(number.numbers_to_words()).to eq("nine")
end	


# #TEEN TESTS
   it "Returns 'Eleven' for '11'"  do 
   	number = NumbersToWords.new(11)
		expect(number.numbers_to_words()).to eq("eleven")
	end
		it "Returns 'nineteen' for '19'"  do 
			number = NumbersToWords.new(19)
		expect(number.numbers_to_words()).to eq("nineteen")
	end


# #TWENTY THROUGH NINETY
    it "Returns 'Twenty' for '20'"  do 
    	number = NumbersToWords.new(20)
		expect(number.numbers_to_words()).to eq("twenty")
	end
	 it "Returns 'forty' for '40'"  do 
    	number = NumbersToWords.new(20)
		expect(number.numbers_to_words()).to eq("twenty")
	end
	 it "Returns 'Twenty nine' for '29'"  do 
    	number = NumbersToWords.new(29)
		expect(number.numbers_to_words()).to eq("twenty nine")
	end
	it "Returns 'ninety nine' for '99'"  do 
    	number = NumbersToWords.new(99)
		expect(number.numbers_to_words()).to eq("ninety nine")
	end

# #HUNDREDS TESTS
it "Returns 'one hundred' for '100'"  do 
    	number = NumbersToWords.new(100)
		expect(number.numbers_to_words()).to eq("one hundred")
	end
	it "Returns 'one hundred and twenty' for '120'"  do 
    	number = NumbersToWords.new(120)
		expect(number.numbers_to_words()).to eq("one hundred and twenty")
	end
	it "Returns 'one hundred and forty one' for '141'"  do 
    	number = NumbersToWords.new(141)
		expect(number.numbers_to_words()).to eq("one hundred and forty one")
	end
# 	it "Returns 'one hundred and ten' for '110'"  do 
#     	number = NumbersToWords.new(110)
# 		expect(number.numbers_to_words()).to eq("one hundred and ten")
# 	end
# 	it "Returns 'one hundred and nineteen' for '119'"  do 
#     	number = NumbersToWords.new(119)
# 		expect(number.numbers_to_words()).to eq("one hundred and nineteen")
# 	end
# 		it "Returns 'one hundred and nine' for '109'"  do 
#     	number = NumbersToWords.new(109)
# 		expect(number.numbers_to_words()).to eq("one hundred and nine")
# 	end

# #THOUSANDS TESTS
# 	it "Returns 'one thousand' for '1000'"  do 
#     	number = NumbersToWords.new(1000)
# 		expect(number.numbers_to_words()).to eq("one thousand")
# 	end
# 	it "Returns 'ten thousand' for '10000'"  do 
#     	number = NumbersToWords.new(10000)
# 		expect(number.numbers_to_words()).to eq("ten thousand")
# 	end
# 	it "Returns 'one hundred thousand' for '100000'"  do 
#     	number = NumbersToWords.new(100000)
# 		expect(number.numbers_to_words()).to eq("one hundred thousand")
# 	end
# 	it "Returns 'one thousand and one' for '1001'"  do 
#     	number = NumbersToWords.new(1001)
# 		expect(number.numbers_to_words()).to eq("one thousand and one")
# 	end



# #ERROR 
#    it "Returns 'Can't go this high'"  do 
#    	number = NumbersToWords.new(1000000000)
# 		expect(number.numbers_to_words()).to eq("Can't go this high")
# 	end
	
end
