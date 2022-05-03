require_relative "spec_helper"
require "coin_combinations"
require "rack/test"


RSpec.describe "Coin Combinations" do
	let (:coin_combo) { CoinCombo.new }


	it "Single Penny" do 
		expect(coin_combo.coin_combinations(1)).to eq("1 penny")
	end

	it "Multiple Pennies" do 
		expect(coin_combo.coin_combinations(4)).to eq("4 pennies")
	end

	it "Single Nickel" do 
		expect(coin_combo.coin_combinations(5)).to eq("1 nickel")
	end

	it "Nickel and Penny" do 
		expect(coin_combo.coin_combinations(6)).to eq("1 nickel 1 penny")
	end

	it "Nickel and Pennies" do 
		expect(coin_combo.coin_combinations(9)).to eq("1 nickel 4 pennies")
	end

	it "Single Dime" do 
		expect(coin_combo.coin_combinations(10)).to eq("1 dime")
	end
	it "Dime and Penny" do 
		expect(coin_combo.coin_combinations(11)).to eq("1 dime 1 penny")
	end

	it "Dime, Penny and Nickel" do 
		expect(coin_combo.coin_combinations(16)).to eq("1 dime 1 nickel 1 penny")
	end

	it "Multiple Dimes" do 
		expect(coin_combo.coin_combinations(20)).to eq("2 dimes")
	end

	it "Multiple Dimes and Pennies" do 
		expect(coin_combo.coin_combinations(24)).to eq("2 dimes 4 pennies")
	end


	it "Single Quarter" do 
		expect(coin_combo.coin_combinations(25)).to eq("1 quarter")
	end

	it "Quarter and Dime" do 
		expect(coin_combo.coin_combinations(35)).to eq("1 quarter 1 dime")
	end

	it "Multiple quarters" do 
		expect(coin_combo.coin_combinations(50)).to eq("2 quarters")
	end

	it "Multiple quarters and extra" do 
		expect(coin_combo.coin_combinations(55)).to eq("2 quarters 1 nickel")
	end


end
