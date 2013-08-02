require_relative "lib/french_room"

class FrenchBonus < FrenchRoom
  def initialize
    @next_room = FrenchBonus
    @escape_room = Won
    @escape_code = "0"
    super
  end

  def action
    puts @messager.challenge
    puts "/_\\ Type [#{@escape_code}] if you want return to the Bonus list/_\\"
    super
  end

  def failed_room
    puts @messager.incorrect_answer
    try
    initialize
    action
  end
end