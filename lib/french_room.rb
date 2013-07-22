require_relative '../room'

class FrenchRoom < Room
  def puts_challenge(english_word)
    puts "Mouse : \"Can you guess how to say the word \"#{english_word}\" in french ?\""
    puts "Mouse : \"with 2 try\""
  end
end