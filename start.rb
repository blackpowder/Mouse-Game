require "./room.rb"
require "./boombadaboom.rb"
require "./meet_mouse.rb"
require "./deal"
require "./devinette"
require "./french.rb"
require "./guessfour.rb"
require "./won"

class Game
	def start
		#first_room = Boombadaboom.new
		#first_room.enter

    FrenchBonus.new.action
	end 
end

mygame = Game.new
mygame.start