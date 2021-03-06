require 'dealer'
require 'deck'

describe Dealer do

  let(:deck) { double(Deck.create_deck) }
  subject(:dealer) { described_class.new }

  describe '#initialize' do
    it 'initializes with Deck objects' do
      expect(dealer.deck.class).to eq Deck
    end
  end

  describe '#deal' do
    it 'takes a random card from the deck' do
      expect(dealer.deck.full_deck).not_to include(dealer.deal)
    end
  end

end
