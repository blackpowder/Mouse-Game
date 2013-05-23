
class Guessfour < Room

	def action
		puts ""
		puts "Mouse :\"Great! Last step! You need to find the comunity code\""
		puts "Mouse :\"You have to know this code if you want access to the safe area inside the wall\""
		puts "Mouse :\"It's 4 digit code with numbers between 0 and 10\""
		puts "Mouse :\"Give me this numbers in the correct order\""
		puts "Mouse :\"Don't write any spaces between each numbers:\""
		puts "Mouse :\"You have 13 tries :\""
		puts ""
		a = rand(1...10)
		b = rand(1...10)
		c = rand(1...10)
		d = rand(1...10)
		#puts "#{a} #{b} #{c} #{d}"
		numbers = [a, b , c, d]
		puts "#{numbers}"	
		n = 0
		patate = false

		while true
			print " Try #{n} "
			next_move = prompt()

			guesses = next_move.split(//)

			next unless valid_input?(guesses)

			correct_count = 0
			n = n + 1

			place = 0
			guesses.each do |guess|

			correct_count+=1 if numbers[place] == guess.to_i

				#if numbers[place] == guess.to_i
				#	correct_count+=1
				#end 
				place += 1
			end

			if correct_count == 4
				puts ""
				puts "Well done - you found the code!"
				puts "Congratulations!"
				puts "You have answered all the riddles and won the game!"
				options = Won.new
				options.again

				patate = true
				#Process.exit(0)
			else

				if correct_count < 2
					puts "You have #{correct_count} number in the correct position"

				else 
					puts "You have #{correct_count} numbers in the correct position"
				end

				if n == 13
					puts "You lost! The answer was #{a} #{b} #{c} #{d}"

					over()
				end
			end
		end
	end

	def valid_input? guesses
		if guesses.length != 4
			puts "Mouse :\"Hey! This code include 4 numbers, no more, no less !\""
			return false
		end
		guesses.each do |guess|
			#puts guess
			unless ("1"..."10").include? guess
				puts "Mouse :\"Hey ! This code includes just numbers from 1 to 9 !\""
				return false
				#return false unless (0...10).include? guess.to_i
			end	
		end
		true
	end
end
