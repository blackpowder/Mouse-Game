class Devinette_bonus < Room
	def action
		puts ""
		puts "Mouse : \"I'm thinking about a number between 1 and 45\"" 
		puts "Mouse : \"You need to guess, and have 5 tries!\""
		puts "/_\\ Type [0] if you want return to the Bonus list/_\\"
		puts ""
		guess = false
		n = 0
		i = rand(1..45)
		#puts "#{i}"

		while true
			next_move = prompt()
			n = n + 1	

			if next_move.to_i == i and not guess
				puts "Mouse :\"The number is #{i}, Well done !!!\""
				puts ""
				guess = true

				action()

			elsif next_move == "0"
				options = Won.new
				options.again

			elsif next_move.to_i > 0 &&  next_move.to_i < i
				if n == 5
					puts "The number was #{i}"
					action()
				end # add ?

			puts "Mouse : \"The number you have to guess is bigger\""

			elsif next_move.to_i > i && next_move.to_i < 50
				if n == 5
					puts "The number was #{i}"
					action()
				end 
				puts "Mouse : \"The number you have to guess is smaller\""

			else 
				puts "Mouse : \"You have to guess a number between 0 and 45 !!!\""
			end
		end
	end
end