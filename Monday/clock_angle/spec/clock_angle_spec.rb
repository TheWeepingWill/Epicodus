require_relative 'spec_helper'
require './clock_angle.rb'
require 'rack/test'

RSpec.describe 'Clock Angle' do 

	include Rack::Test::Methods
    #HOUR TESTS

	it "Transforms a given time into a float" do 
		expect(hour_float('6:52')).to eq(6.52)
	end

	it "Transforms a given time into a the hour hands ercentage of time from 12" do 
		expect(hour_percent('6:52')).to eq(54.33)
	end

	it "Gives the Hour angle" do 
		expect(hour_angle('12')).to eq(360)
	end


    #MINUTE TESTS


	it "Transforms a given time into minutes" do 
		expect(minute_integer('6:52')).to eq(52)
	end

	it "Transforms a given time into integer" do 
		expect(minute_percent('3:30')).to eq(50)
	end

	it "Gives the minute hands angle" do 
		expect(minute_angle('3:30')).to eq(180)
	end

	#CLOCK ANGLE TEST

	it "Gives the angle that the hands of an analog clock form" do 
		expect(clock_angle('12:00')).to eq(0)
	end
	
end