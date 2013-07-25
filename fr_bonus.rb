require "./dict"
require_relative "lib/french_room"

class FrenchBonus < FrenchRoom
  def initialize
    @next_room = FrenchBonus
  end
	
	def action
		
		word = Dict.new
		english_word = word.english
		answer = word.french
		shuffle = word.letters

    puts challenge(english_word)
		puts "/_\\ Type [0] if you want return to the Bonus list/_\\"

		next_move = prompt

		if correct_answer?(next_move, answer)
      go_to_next_room

		elsif next_move == "0"
			options = Won.new
			options.again

    else
      puts try_again(shuffle)
			next_move = prompt

			if correct_answer?(next_move, answer)
        go_to_next_room

			elsif next_move == "0"
        options = Won.new
        options.again

			else
				puts incorrect_answer(answer)
				try
				action 
			end
		end
  end
end