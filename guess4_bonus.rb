class Guess4_bonus < Room

	def action
		puts "Mouse :\"There is a 4 digit code to access the secure area of the house - you have to guess what it is!!\""
		puts "Mouse :\"Each digit is between 0 and 10\""
		puts "Mouse :\"Don't write any spaces between each numbers:\""
		puts "Mouse :\"You have 13 tries :\""
		puts "/_\\ Type [0] if you want return to the Bonus list/_\\"
		puts ""
		a = rand(1...10)
		b = rand(1...10)
		c = rand(1...10)
		d = rand(1...10)

		numbers = [a, b , c, d]
		#puts "#{numbers}"	
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
							
			correct_count+=1 if numbers[place] == guess.to_i

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
					puts "The answer was #{a} #{b} #{c} #{d}"
					try()
					action()
				end
			end
		end
	end

	def valid_input? guesses
		if guesses.length != 4
			puts "Mouse :\"Hey! This code has 4 digits, no more, no less!\""
			return false
		end
		
		guesses.each do |guess|
			#puts guess
			unless ("1"..."10").include? guess
				puts "Mouse :\"Hey! This code includes only numbers from 1 to 9 !\""
				return false
				#return false unless (0...10).include? guess.to_i
			end	
		end
		true
	end
end
