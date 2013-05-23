
class Boombadaboom < Room

	def initialize
	    @quips1 = [
	     "Well done, Enjoy the mash potatoes!",
	     "Suck it loser, you're dinner!!!!",
	     "What's your favorite potatoes recipe?! Ah ah!",
	     "Potatoes in the kitchen! Yum Yum!"
	    ]
	end

	def over1
	    puts @quips1[rand(@quips1.length())]
	    Process.exit(1)
	end

	def enter
		puts ""
		puts "Boommm Badaboom Boom Boom !"
		puts ".."*15
		puts ".."*10
		puts ".."*5
		puts "-_-"
		puts ""
		puts "Big fall!"
		puts "You lost your mind for few minutes"
		puts "When you open your eyes, you see that you're in an unknown place."
		puts "What do you do?"
		puts "* 1 : Look around and try to understand what has happened"
		puts "and find something clever to do ?"
		puts "* 2 : You become scared, frantic and run behind a big rubbish bin" 
		puts "  "

		next_move = prompt

		if next_move.include? "1"
			puts "  "
			puts "You look stupid! Someone picks you up and you look like a potatoe!"
			over1
			#Process.exit(0)

		elsif next_move.include? "2"
			puts "  "
			puts "Ducking for cover you have time to look around and remember what happened."
			puts "You see a Lady standing in the kitchen and starting to make dinner."
			puts "The same lady who recently abducted you at the super market and put you in a shopping bag"
			puts ""
			puts "That's right, you're a litle potatoes in a big, wild and dangerous house,"  
			puts "try to stay alive without people picking you up and turning you into mashed potatoes!"
			
			room = Meet_Mouse.new
			room.enter 

		else 			
			try
			enter
		end

	end
end