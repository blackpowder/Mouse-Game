require_relative '../lib/french_room'

describe FrenchRoom do
  subject(:room) {FrenchRoom.new}

  describe 'challenge' do
    it 'includes an english word' do
      room.challenge('some_random_english_word').should include('some_random_english_word')
    end
  end
end
