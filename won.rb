require "./devinette_bonus"
require "./fr_bonus"
require "./guess4_bonus"

class Won < Room
	def again
		puts ""
		puts "------------- BONUS ---------------"
		puts ""
		puts "Would you like to play again?! Type:"
		puts "[1] If you want to guess a word between 1 and 45"
		puts "[2] If you want to guess some french words"
		puts "[3] If you want to guess a different code"
		puts "[4] if you want finish the game!"

		next_move = prompt

		if next_move.include? "1"
			devinette = Devinette_bonus.new
			devinette.action		

		elsif next_move.include? "2"
			french = FrenchBonus.new
			french.action

		elsif next_move.include? "3"
			guess4 = Guess4_bonus.new
			guess4.action

		elsif next_move.include? "4"
			puts "----------- FREEEEEEEEEDOMMMMMMMM ------------"
			puts "----------- Longue vie aux patates -----------"
			puts "----------- Have a Wonderfull day ------------"
			Process.exit(1)

		else
			try
			again
		end
	end
end