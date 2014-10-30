require 'card'
require 'shared_examples/card'

describe Card do
  let(:card) { Card.new(:guard, 1, :none) }

  it_behaves_like 'a card object'

  context 'sorting' do
    let(:low) { Card.new(:guard, 1, :none) }
    let(:mid) { Card.new(:baron, 3, :none) }
    let(:high) { Card.new(:princess, 8, :none) }
    let(:cards) { [mid, high, low] }

    it 'should be able to sort by value' do
      expect(cards.sort).to eq [low, mid, high]
    end
  end
end
