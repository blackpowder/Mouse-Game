require "./dict"
require_relative "lib/french_room"

class Fr < FrenchRoom
	
	def action
		
		word = Dict.new
		english_word = word.english
		answer = word.french
		shaffle = word.letters

    puts_challenge(english_word)
		puts "/_\\ Type [0] if you want return to the Bonus list/_\\"

		next_move = prompt

		if next_move.upcase.include? "#{answer}" 
			puts "Mouse : \"Well done !!!\""
			action()

		elsif next_move == "0"
			options = Won.new
			options.again

		else 
			puts ""
			puts "Mouse : \"Try again !\""
			puts "Mouse : \"I will give you the letters\""
			puts "Mouse : \"You just need to figure out the correct order :\""
			puts "Mouse : \"#{shaffle}"
			next_move = prompt

			if next_move.upcase.include? "#{answer}" 
				puts "Mouse : \"Well done !!!\""
				puts ""

				action

			elsif next_move == "0"
			options = Won.new
			options.again

			else
				puts ""
				puts "Mouse : \"It's not correct\""
				puts "The answer was #{answer}"
				try
				action 
			end
		end
	 end
end