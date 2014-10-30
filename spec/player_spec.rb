require 'player'

describe Player do
  let(:player) { Player.new }

  context 'hand' do
    FakeCard = Struct.new(:name, :value, :ability)
    class FakeDeck
      def initialize(card); @deck = [card]; end;
      def draw; @deck.pop; end;
    end

    let(:card) { FakeCard.new(:guard, 1, :none) }
    let(:deck) { FakeDeck.new(card) }

    it 'should have a hand when it draws a card' do
      player.draw_from(deck)
      expect(player.hand).to eq [card]
    end
  end

  it 'should have a status' do
    expect(player.status).to eq :active
  end
end
