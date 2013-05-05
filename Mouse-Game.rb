def prompt()
	print "> "
	return gets.chomp
end

def try()
	puts "-------- Try again ---------"
end

def p()
	print "> "
end

def over()
	puts "You can't survive without the help of the mouse"
	puts "Well done, Enjoy the Match potatoes!"
	Process.exit(0)
end

def guessfour()

	puts "Mouse :\"Great ! Last steps ! You need to find the comunity code\""
	puts "Mouse :\"You have to know this code if you want going in the way inside the wall\""
	puts "Mouse :\"Place the more secure in this house.\""
	puts "Mouse :\"It's 4 number between 0 and 10\""
	puts "Mouse :\"Give me this numbers in the correct order\""
	puts "Mouse :\"Don't write any spaces between each numbers:\""
	puts "Mouse :\"You have 10 try :\""
	puts ""

	a = rand(0...10)
	b = rand(0...10)
	c = rand(0...10)
	d = rand(0...10)

	#puts "#{a} #{b} #{c} #{d}"

	numbers = [a, b , c, d]
	
	n = 0
	patate = false

	while true

	correct_count = 0
	n = n + 1

	print " Try #{n} "
	next_move = prompt()

	guesses = next_move.split(//)
	#puts "#{guesses}"
	# check they have entered the correct number of guesses
	
	guesses.each do |guess|
		#puts "guess = #{guess}"
		place = guesses.index(guess)
		#puts "place = #{place}"	
		if numbers[place] == guess.to_i
		correct_count+=1
		#correct_count = correct_count + 1
		end 
end
		

		if correct_count == 4
			puts "Well done"
			puts "Congratulation ! You found all answers !"
			puts "You win the game !"
			patate = true
			Process.exit(0)
		else
			puts "You have #{correct_count} number in the good order"
			if n == 10
				puts "You lost ! The answer was #{a} #{b} #{c} #{d}"

				over()
		end
		end
end





		
	
		#determine if the guess in the corresponding position in guesses is correct - if so, increase correct_count
		#use index method to figure out which guess to check
	
end

	#if correct count is 4 then they win
	
	







	#if next_move.include? "#{a}" and "#{b}" and "#{c}" and "#{d}"
	#	puts 

#	end





def french()
	puts "Mouse : \"I love Paris\""
	puts "Mouse : \"Can you guess how do you say the word \"MOUSE\" in french ?\""
	puts "Mouse : \"with 2 try\""

	next_move = prompt()

	if next_move.downcase == "souris" 
		puts "Mouse : \"Well done !!!\""
		guessfour()

	else 
		puts "Mouse : \"Try again !\""
		puts "Mouse : \"I will give you the letters and find the good order\""
		puts "Mouse : \"[ U O S S I R]"

		next_move = prompt()

			if next_move.downcase != "souris" 
				puts "Mouse : \"It's not correct\""
				over()

			else 
				puts "Mouse : \"Well done !!!\""
				puts ""
				guessfour()
			end

			

			#if next_move == "Souris" || "souris" || "SOURIS"
				#puts "Mouse : \"Well done !!!\""
				#puts ""
				#guessfour()
			#else
				#puts "Mouse : \"It's not correct, the answer is \"SOURIS\"\""
				#over()
			
end
end



def devinette()
	puts "Mouse : \"Great ! We will start to play with my favorite game !\""
	puts "Mouse : \"I'm thinking about a number between 1 and 45\"" 
	puts "Mouse : \"You need to guess, you have 5 try !\""
	guess = false
	n = 0
	i = rand(0..40)
	puts "#{i}"


while true
	
next_move = prompt().to_i
n = n + 1
	

	if next_move == i and not guess
		puts "Mouse :\"The number is #{i}, Well done !!!\""
		puts ""
		guess = true
		french()



	elsif next_move > 0 and  next_move < i
		if n == 5
			puts "You lost the game"
			puts "The number was #{i}"
			over()
		end # add ?

		puts "Mouse : \"The number you have to guess is bigger\""


	elsif next_move > i and next_move < 50

		if n == 5
			puts "You lost the game"
			puts "The number was #{i}"
			over()

		end 

		puts "Mouse : \"The number you have to guess is smaller\""


	else 
	puts "Mouse : \"You have to guess a number between 0 and 45 !!!\""
			
	end

	
	end
end




def deal()
	puts "The mouse answer to you"
	puts "Mouse : \"Hey ! i know how stay in this house in security\""
	puts "Mouse : \"But you should to play with me\""
	puts "Mouse : \"I have tree riddle if you find all answers i will protect you\""
	puts "Mouse : \"Do you accept the deal ?\""

	next_move = prompt()

	if next_move.include? "yes"
		puts ""
		return devinette()

	elsif next_move.include? "no"
		return over()

	else 
		try()
		deal()
	end

end




def mouse() 
	puts "You see a mouse walking close to you"
	puts "What are you doing ?"
	puts " * 1 : You flee"
	puts " * 2 : You try to speek to the mouse"

	next_move = prompt()

	if next_move.include? "1"
		p()
		puts " Mouse don't mind about eat potatoes"
		p()
		puts " but the lady doesn't, well done!"

	elsif next_move.include? "2"
		puts ""
		deal()

	else
	try()
	mouse()
	end 
end



def start()
	puts ""
	puts "Boommm Badaboom Boom Boom !"
	puts ".."*15
	puts ".."*10
	puts ".."*5
	puts "-_-"
	puts ""
	puts "Big fall !"
	puts "You lost your mind for few minutes"
	puts "When you're opening your eyes, you see that you're are in an unknown place."
	puts "What do you do ?"
	puts "* 1 : Watching around yourself and try to understand what it has been happenned and why not find something clever to do ?"
	puts "* 2 : You become scary, frantic , you're running behing a big rabish bins" 
	puts "  "
	

	next_move = prompt()
	

	if next_move.include? "1"
		puts "You look stupid ! someone pick you up and you didn't moove ! Well done, you will finish in Match Potatoes"
		Process.exit(0)

	elsif next_move.include? "2"
		puts "hiding you have time to remember and watching. You're falling down from a shoping bag. And you see a Lady starting to make dinner. \n
==>  So you're are a litle potatoes in a big, wild and dangerous house,  try to stay alive without people pick you up and finish in Match potaoes !"
		mouse()
	else 
		try()
		start()
	end

end




start()






#	For extra credit, use arrays, functions, and modules (remember those from Ex. 13?) as much as possible, and find as many new pieces of Ruby as you can to make the game work.

#	There is one catch though, write up your idea for the game first. Before you start coding you must write up a map for your game. Create the rooms, monsters, and traps that the player must go through on paper before you code.

#Once you have your map, try to code it up. If you find problems with the map then adjust it and make the code match.