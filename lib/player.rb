class Player
  attr_accessor :status
  attr_reader :hand

  def initialize
    @hand = []
    @status = :active
  end

  def draw_from(deck)
    @hand << deck.draw
  end

  def play_card
    @hand.pop
  end
end
