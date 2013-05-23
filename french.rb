require "./dict"


class French < Room
	
	def action
		
		word = Dict.new
		english_word = word.english
		answer = word.french
		shaffle = word.letters

		puts ""
		puts "Mouse : \"I love Paris\""
		puts "Mouse : \"Can you guess how to say the word \"#{english_word}\" in french ?\""
		puts "Mouse : \"with 2 try\""

		next_move = prompt()

		if next_move.upcase.include? "#{answer}" 
			puts "Mouse : \"Well done !!!\""

			room = Guessfour.new
			room.action

		else 
			puts "Mouse : \"Try again !\""
			puts "Mouse : \"I will give you the letters, you just need to find the correct order :\""
			puts "Mouse : \"#{shaffle}"
			next_move = prompt()

			if next_move.upcase.include? "#{answer}" 
				puts "Mouse : \"Well done !!!\""
				puts ""

				room = Guessfour.new
				room.action

			else
				puts "Mouse : \"It's not correct\""
				puts "The answer was #{answer}"
				over 
			end
		end
	 end
end

