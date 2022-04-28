require_relative "spec_helper"
require "rock_paper_scissors"
require "rack/test"



RSpec.describe "Rock Paper Scissors" do 
	include Rack::Test::Methods

	let(:game) { RPS.new() }

	it "returns false if hand1 == hand2" do 
		expect(game.wins?("rock", "rock")).to(eq(false))
	end

	it("returns true if rock is the object and scissors is the argument") do		
		expect(game.wins?("rock", "scissors")).to(eq(true))
	end

	it "returns false if scissors is the object and rock is the argument" do 
		expect(game.wins?("scissors", "rock")).to(eq(false))
	end 

	it "returns false if rock is the object and paper is the argument" do 
		expect(game.wins?("rock", "paper")).to(eq(false))
	end
end