require_relative "lib/french_room"

class French < FrenchRoom
  def initialize
    @next_room = Guessfour
    super
  end

	def action
    puts "Mouse : \"I love Paris\""
    puts challenge

		next_move = prompt()

		if correct_answer?(next_move, answer)
      go_to_next_room

    else
      puts try_again
			next_move = prompt()

			if correct_answer?(next_move, answer)
        go_to_next_room
			else
				puts incorrect_answer
				over 
			end
		end
  end
end

