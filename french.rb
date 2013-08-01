require_relative "lib/french_room"

class French < FrenchRoom
  def initialize
    @next_room = Guessfour
    super
  end

	def action
    puts "Mouse : \"I love Paris\""
    puts challenge
    super
  end
end

