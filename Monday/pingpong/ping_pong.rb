def ping_pong(input)

	# ping_pong_starter = gets.chomp.to_i
	ping_pong_array =  (1..input).to_a
	ping_pong_array.map  do |number|
		if number % 3 == 0
			'ping!'
		elsif number % 5 == 0
			'pong!'
		else
			number
		end
	end

end


puts "Welcome to Ping Pong!"
puts "Enter a number to start the game!"
input = gets.chomp.to_i

puts ping_pong(input)