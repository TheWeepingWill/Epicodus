require_relative "spec_helper"
require "allergies"
require "rack/test"

RSpec.describe "Allergies" do 


	it "detects egg allergy" do 
		expect(allergies(1)).to eq(["eggs"])
	end

	it "detects peanuts allergy" do 
		expect(allergies(2)).to eq(["peanuts"])
	end

	it "detects egss and peanuts" do 
		expect(allergies(3)).to eq(["eggs", "peanuts"])
	end
end