class Devinette < Room
	def action
		puts "Mouse : \"Great! We will start to play with my favorite game!\""
		puts "Mouse : \"I'm thinking about a number between 1 and 45\"" 
		puts "Mouse : \"You need to guess, and have 5 tries!\""
		guess = false
		n = 0
		i = rand(1..45)
		#puts "#{i}"

		while true
			next_move = prompt().to_i
			n = n + 1	

			if next_move == i and not guess
				puts "Mouse :\"The number is #{i}, Well done !!!\""
				puts ""
				guess = true

				room = French.new
				room.action

			elsif next_move > 0 &&  next_move < i
				if n == 5
					puts "You lost the game"
					puts "The number was #{i}"
					over()
				end # add ?

			puts "Mouse : \"The number you have to guess is bigger\""

			elsif next_move > i && next_move < 50
				if n == 5
					puts "You lost the game"
					puts "The number was #{i}"
					over()
				end 

			puts "Mouse : \"The number you have to guess is smaller\""

			else 
				puts "Mouse : \"You have to guess a number between 0 and 45 !!!\""
			end
		end
	end
end


