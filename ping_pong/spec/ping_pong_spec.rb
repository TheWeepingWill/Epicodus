require_relative 'spec_helper'
require '/Users/theweepingwill/repos/ping_pong/ping_pong.rb'
require 'rack/test'


RSpec.describe 'Ping_pong' do 

	include Rack::Test::Methods

	it "Returns an array from user given number" do 
		expect(ping_pong(2)).to eq([1,2])
	end

	it "Pings" do 
		expect(ping_pong(3)).to eq([1,2, "ping!"])
	end

	it "Pongs" do 
		expect(ping_pong(5)).to eq([1,2, "ping!", 4, "pong!"])
	end

end
