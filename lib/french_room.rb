require_relative '../room'

class FrenchRoom < Room
  def challenge(english_word)
    lines = ["Mouse : \"Can you guess how to say the word \"#{english_word}\" in french ?\""]
    lines <<  'Mouse : "with 2 try"'
    lines.join("\n")
  end
end