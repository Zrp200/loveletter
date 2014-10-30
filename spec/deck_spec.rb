require 'deck'

describe Deck do
  let(:deck) { Deck.new() }

  it 'should start with 16 cards' do
    expect(deck.remaining_cards).to eq 16
  end

  it 'should decrease in size when drawn from' do
    5.times { deck.draw }
    expect(deck.remaining_cards).to eq 11
  end

  it 'should be able to exile one card' do
    deck.exile_card
    expect(deck.exiled_card).to be_kind_of(Card)
    expect(deck.remaining_cards).to eq 15
  end

  it 'should draw the exiled card when the deck is empty' do
    deck.exile_card
    exiled_card = deck.exiled_card
    deck.remaining_cards.times { deck.draw }
    expect(deck.remaining_cards).to eq 0
    expect(deck.draw).to eq exiled_card
    expect(deck.exiled_card).to eq nil
  end
end
