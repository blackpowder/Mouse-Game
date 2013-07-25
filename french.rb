require "./dict"
require_relative "lib/french_room"

class French < FrenchRoom
  def initialize
    @next_room = Guessfour
  end
	
	def action
		word = Dict.new
		english_word = word.english
		answer = word.french
		shuffle = word.letters

    puts "Mouse : \"I love Paris\""
    puts challenge(english_word)

		next_move = prompt()

		if correct_answer?(next_move, answer)
      go_to_next_room

    else
      puts try_again(shuffle)
			next_move = prompt()

			if correct_answer?(next_move, answer)
        go_to_next_room
			else
				puts incorrect_answer(answer)
				over 
			end
		end
  end
end

