# frozen_string_literal: true 
require_relative 'spec_helper'
require 'rack/test'
require 'queen_attack.rb'

RSpec.describe 'Queen_attack' do 

	include Rack::Test::Methods

	it 'is false if the coordinates do not align either horizontally, vertically or diagonally' do 
		expect([1,1].queen_attack?([2,3])).to eq(false)
	end

	it 'is true if the queen can attack horizontally' do 
		expect([1,1].queen_attack?([1,3])).to eq(true)
	end

	it 'is true if the queen can attack vertically' do 
		expect([1,1].queen_attack?([3,1])).to eq(true)
	end

	it 'is true if the absolute value of the distance between queen(x) and enemy(x) == the absolute value of
	     the distance between queen(y) and enemy(y)' do 
	     expect([4,5].queen_attack?([1,8])).to eq(true)
	 end

	 it "fails if anything other than 2 coordinate arrays are passed in or used" do 
	 	expect([3,4,5].queen_attack?([1,2])).to eq(nil)
	 end
end