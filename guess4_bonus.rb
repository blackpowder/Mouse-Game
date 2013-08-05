require_relative "lib/guess_room"

class Guess4_bonus < GuessRoom

	def action
		puts "Mouse :\"There is a 4 digit code to access the secure area of the house - you have to guess what it is!!\""
		puts "Mouse :\"Each digit is between 0 and 10\""
		puts rules
		puts "/_\\ Type [0] if you want return to the Bonus list/_\\"
		puts ""
		ramdom	
		n = 1
		patate = false

		while true
			print " Try #{n} "
			next_move = prompt()

			options = Won.new
			options.again if next_move == "0"

			guesses = next_move.split(//)

			next unless valid_input?(guesses)

			correct_count = 0
			n = n + 1

			place = 0
			guesses.each do |guess|
							
			correct_count+=1 if @numbers[place] == guess.to_i

				place += 1
			end

			if correct_count == 4
				puts "Well done, you found the code!"
				action()

				patate = true
				#Process.exit(0)
			else
				#todo - read about pluralize
				if correct_count < 2
					puts "You have #{correct_count} number in the correct position"

				else 
					puts "You have #{correct_count} numbers in the correct position"
				end



				if n == 13
					puts "The answer was #{@numbers.join(" ")}"
					try()
					action()
				end
			end
		end
	end
end
