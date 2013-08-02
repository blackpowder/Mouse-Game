class FrenchRoomMessager
  def initialize(word)
    @word = word
  end

  def challenge
    lines = ["Mouse : \"Can you guess how to say the word \"#{@word.english}\" in french ?\""]
    lines <<  'Mouse : "with 2 try"'
    lines.join("\n")
  end

  def try_again
    lines = [""]
    lines << "Mouse : \"Try again !\""
    lines << "Mouse : \"I will give you the letters\""
    lines << "Mouse : \"You just need to figure out the correct order :\""
    lines << "Mouse : \"#{@word.letters}\""
    lines.join("\n")
  end

  def incorrect_answer
    lines =  [""]
    lines << "Mouse : \"It's not correct\""
    lines << "Mouse : \"The answer was #{@word.french}\""
    lines.join("\n")
  end

  def correct_answer
    lines = ["Mouse : \"Well done !!!\""]
    lines << ""
    lines.join("\n")
  end
end
