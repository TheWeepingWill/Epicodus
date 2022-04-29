# frozen_string_literal: true 
require_relative "spec_helper"
require "find_and_replace"
require "rack/test"


RSpec.describe "Find_and_replace" do 
	it "returns a desired string" do 
		expect("Hello world".find_and_replace("world", "universe")).to eq("Hello universe") 
	end
	it "replaces a word" do 
		expect("Hello world".find_and_replace("world", "Braden")).to eq("Hello Braden") 
	end
	it "replaces all occurances of a given word, partial or whole word" do 
		expect("I am walking my cat to the cathedral".find_and_replace("cat", "dog")).to eq("I am walking my dog to the doghedral")
	end
end