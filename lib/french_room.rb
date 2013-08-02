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
    next_move.upcase == answer #todo - fix this bug
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

  def action
    check_answer(prompt)
  end

  def check_answer(next_move)
    if next_move == @escape_code
      escape_room
    elsif correct_answer?(next_move, answer)
      go_to_next_room
    else
      puts try_again
    	next_move = prompt()

    	if correct_answer?(next_move, answer)
       go_to_next_room
      elsif next_move == @escape_code
        escape_room
      else
        failed_room
    	end
    end
  end

  def failed_room
    puts incorrect_answer
    over
  end

  def escape_room
    @escape_room.new.again
  end
end