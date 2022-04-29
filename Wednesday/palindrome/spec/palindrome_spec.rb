# frozen_string_literal: true 

require_relative 'spec_helper'
require 'rack/test'
require 'palindrome'

RSpec.describe 'Palindrome' do 

	describe 'palindrome?' do 
		it "returns true if a word is reversed" do 
			expect('hannah'.palindrome?).to eq(true)
		end
		it "returns false if a word is not a palindrome" do 
			expect("false".palindrome?).to eq(false)
		end
	end

	describe 'hard_palindrome?' do 
		it "returns true if a word is reversed" do 
			expect('hannah'.hard_palindrome?).to eq(true)
		end
		it "returns false if a word is not a palindrome" do 
			expect("false".hard_palindrome?).to eq(false)
		end
	end
end