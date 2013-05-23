class Meet_Mouse < Room

	def enter
		puts ""
		puts "You see a mouse walking close to you"
		puts "Mouse: \"Heya sleepy head, What's cooking?\""
		puts " * 1 : You flee"
		puts " * 2 : You speak to the mouse"

		next_move = prompt

		if next_move.include? "1"
			puts "Mice don't eat potatoes, but the lady does - good call!"
			return over
			
		elsif next_move.include? "2"
			room = Deal.new
			room.enter

		else
		try
		enter
		end 
	end
end