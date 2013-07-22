require "./dict"
require_relative "lib/french_room"

class French < FrenchRoom
	
	def action
		
		word = Dict.new
		english_word = word.english
		answer = word.french
		shaffle = word.letters

    puts "Mouse : \"I love Paris\""
    puts challenge(english_word)

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

