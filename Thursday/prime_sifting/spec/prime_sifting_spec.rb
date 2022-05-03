# frozen_string_literal: true 
require_relative "spec_helper"
require "prime_sifting"
require "rack/test"

RSpec.describe "Prime Sifting" do 
     it "returns 2 as a prime" do 
     	expect(2.primes).to eq([2])
     end
     it "returns 2 and 3" do 
     	expect(3.primes).to eq([2,3])
     end
     it "all prime numbers before 100" do 
          expect(100.primes).to eq([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])
     end
end