require 'card/guard'

class Deck
  attr_reader :exiled_card

  def initialize
    @deck = build_deck
    @exiled_card = nil
  end

  def remaining_cards
    @deck.count
  end

  def draw_exiled_card
    card = @exiled_card
    @exiled_card = nil
    card
  end

  def draw
    if @deck.empty?
      if @exiled_card.nil?
        raise 'Exiled Card has already been drawn'
      else
        draw_exiled_card
      end
    else
      @deck.pop
    end
  end

  def exile_card
    @exiled_card = self.draw
  end

  private

  def build_deck
    16.times.map do
      Guard.new
    end.shuffle
  end
end
