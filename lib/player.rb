class Player
  attr_accessor :status

  def initialize; @hand, @status = Array.new, :active; end

  def hand=(value)
    @hand = [value]
  end

  def hand
    if @hand.count == 1 then @hand.first
    else
      @hand
    end
  end

  def draw_from(deck)
    @hand << deck.draw
  end

  def play_card; @hand.pop; end
end
