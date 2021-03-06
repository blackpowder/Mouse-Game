require_relative '../dict'
require_relative '../room'
require_relative './french_room_messager'

class FrenchRoom < Room
  def initialize
    @word = Dict.new
    @messager = FrenchRoomMessager.new(@word)
    super
  end

  def correct_answer?(next_move, answer)
    next_move.upcase == answer
  end

  def go_to_next_room
    puts @messager.correct_answer
    @next_room.new.action
  end

  def action
    check_answer do
      puts @messager.try_again
      check_answer {failed_room}
    end
  end

  def check_answer
    next_move = prompt()
    if next_move == @escape_code
      escape_room
    elsif correct_answer?(next_move, @word.french)
      go_to_next_room
    else
      yield
    end
  end

  def failed_room
    puts @messager.incorrect_answer
    over
  end

  def escape_room
    @escape_room.new.again
  end
end
