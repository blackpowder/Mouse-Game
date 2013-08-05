require_relative '../room'

class GuessRoom < Room
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

	def rules
		puts "Mouse :\"Don't write any spaces between each numbers:\""
		puts "Mouse :\"You have 13 tries :\""
	end

	def ramdom
		a = rand(1...10)
		b = rand(1...10)
		c = rand(1...10)
		d = rand(1...10)

		@numbers = [a, b , c, d]
	end
end