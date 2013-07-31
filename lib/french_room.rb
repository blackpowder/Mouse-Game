require_relative '../dict'
require_relative '../room'

class FrenchRoom < Room
  def initialize
    @word = Dict.new
    super
  end

  def challenge
    lines = ["Mouse : \"Can you guess how to say the word \"#{english_word}\" in french ?\""]
    lines <<  'Mouse : "with 2 try"'
    lines.join("\n")
  end

  def try_again
    lines = [""]
    lines << "Mouse : \"Try again !\""
    lines << "Mouse : \"I will give you the letters\""
    lines << "Mouse : \"You just need to figure out the correct order :\""
    lines << "Mouse : \"#{shuffle}\""
    lines.join("\n")
  end

  def incorrect_answer
    lines =  [""]
    lines << "Mouse : \"It's not correct\""
    lines << "Mouse : \"The answer was #{answer}\""
    lines.join("\n")
  end

  def correct_answer
    lines = ["Mouse : \"Well done !!!\""]
    lines << ""
    lines.join("\n")
  end

  def correct_answer?(next_move, answer)
    next_move.upcase.include? "#{answer}" #todo - fix this bug
  end

  def go_to_next_room
    puts correct_answer
    @next_room.new.action
  end

  def english_word
    @word.english
  end
  def answer
    @word.french
  end
  def shuffle
    @word.letters
  end
end