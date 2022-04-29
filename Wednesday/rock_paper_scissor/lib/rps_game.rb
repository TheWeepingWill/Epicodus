# frozen_string_literal: true

require_relative 'rock_paper_scissors.rb'
require_relative 'game'

class RPSGame < Game
	attr_accessor :difficulty
	HANDS = ['rock', 'paper', 'scissors']
	BOT_HAND = { 'rock' => 'paper', 'paper' => 'scissors', 'scissors' => 'rock' }

	NAME = ['Stephen', 'William', 'Caleb', 'John', 'Braden']

	def initialize
		puts "Lets play Rock Paper Scissors!"
		puts 'How difficult do you want it?! (0 - 10)'
		@difficulty = gets.strip.to_i
	end

	def play
		sleep 1
		puts "On three input your hand"
		sleep 1
		puts "Are you ready?"
		sleep 2
		puts "One..."
		sleep 1
		puts "Two..."
		sleep 1 
		puts "Three...Go!"


		hand1 = human_hand

		hand2 = if difficulty == 0
			BOT_HAND.invert[hand1.downcase]
		else
			Array.new((difficulty - 1) * 2).fill(BOT_HAND[hand1.downcase]).push(bot_hand(HANDS)).sample
		end
		name = NAME.sample



		until hand1.downcase == 'rock' || hand1.downcase == 'paper' || hand1.downcase == 'scissors'
			puts 'Please enter a valid hand position. (Rock, Paper, Scissors)'
			hand1 = gets.to_s.strip
		end


        if RPS.new.outcome(hand1, hand2) == 'tie'
			puts "It's a tie!"
		elsif RPS.new.outcome(hand1, hand2) == true
			puts "You Win!"
		else
			puts "Your opponent #{name} Wins!"
		end

		replay


	end
end
RPSGame.new.play