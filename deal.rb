class Deal < Room

	def enter
		puts ""
		puts "The mouse answers you :"
		puts "Mouse : \"Hey! I know how stay alive in this house\""
		puts "Mouse : \"But you should to pass the tests\""
		puts "Mouse : \"I only rescue smart vegtables who know how to play!\""
		puts "Mouse : \"I have three riddles - find all the answers and i will protect you\""
		puts "Mouse : \"Do you accept the deal?\""

		next_move = prompt().downcase

		if next_move.include? "yes"
			puts ""
			room = Devinette.new
			room.action

		elsif next_move.include? "no"
			over()

		else 
			try
			enter
		end
	end
end