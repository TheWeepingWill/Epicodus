require_relative "spec_helper"
require "scrabble_score"
require "rack/test"

RSpec.describe "Scrabble Score" do 
	include Rack::Test::Methods

	it "Returns a scrabble score for a letter" do 
		expect("a".scrabble()).to eq(1)
	end 

	it "Returns a scrabble score for a word" do 
		expect("aei".scrabble()).to eq(3)
	end

	
end