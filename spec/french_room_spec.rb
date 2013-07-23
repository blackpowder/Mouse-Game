require_relative '../lib/french_room'

describe FrenchRoom do
  subject(:room) {FrenchRoom.new}

  describe 'challenge' do
    it 'includes an english word' do
      room.challenge('some_random_english_word').should include('some_random_english_word')
    end
  end

  describe 'try again' do
    subject(:output) {room.try_again('some_shuffled_letters')}

    it 'includes try again' do
      output.should include('Try again')
    end
    it 'includes an shuffle' do
      output.should include('some_shuffled_letters')
    end
  end
end
