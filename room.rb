
class Room
	def prompt
		print "> "
		gets.chomp
	end

    def p
	   print "> "
    end

    def try
    	puts "-------- Try again ---------"
    end

    def initialize
        @quips = [
         "You can't survive without the help of the mouse\nWell done, enjoy the mashed potatoes !",
         "You can't survive without the help of the mouse\nSuck it loser, you're cooked!!!!",
         "You can't survive without the help of the mouse\nWhat's your favorite potatoe recipe?! Ah ah!",
         "You can't survive without the help of the mouse\nPotatoes in the kitchen! Yum yum!"
        ]
    end

    def over
        puts @quips[rand(@quips.length())]
        Process.exit(1)
    end

end





