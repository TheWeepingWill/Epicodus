require_relative 'spec_helper'
require './leet_speak.rb'
require 'rack/test'


RSpec.describe 'Leet Speak' do 

	include Rack::Test::Methods

	it "Returns a string unchanged if leetspeak rules do not apply" do
		expect("happy".leetspeak).to eq("happy")
	end

	it "Switches 'e' for '3'" do 
		expect("leet speak".leetspeak).to eq("l33t sp3ak")
	end

	it "Switches 'o' for '0'" do 
		expect("lot cop".leetspeak).to eq("l0t c0p")
	end

	it "Switches 'I' for '1'" do 
		expect("I am I".leetspeak).to eq("1 am 1")
	end

	it "Switches 's' for 'z' UNLESS its the first letter of a word" do 
		expect("say sir say".leetspeak).to eq("say sir say")
	end

	it "Applies leetspeak rules" do 
       expect("This Is leet speak or is it?".leetspeak).to eq("Thiz 1z l33t sp3ak 0r iz it?")
	end

end