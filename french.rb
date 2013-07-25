require "./dict"
require_relative "lib/french_room"

class French < FrenchRoom
	
	def action
		
		word = Dict.new
		english_word = word.english
		answer = word.french
		shuffle = word.letters

    puts "Mouse : \"I love Paris\""
    puts challenge(english_word)

		next_move = prompt()

		if next_move.upcase.include? "#{answer}" 
			puts "Mouse : \"Well done !!!\""

			room = Guessfour.new
			room.action

    else
      puts try_again(shuffle)
			next_move = prompt()

			if next_move.upcase.include? "#{answer}" 
				puts "Mouse : \"Well done !!!\""
				puts ""

				room = Guessfour.new
				room.action

			else
				puts incorrect_answer(answer)
				over 
			end
		end
	 end
end

