require 'card'

class Prince < Card
  def initialize
    super(:prince, 5, ability)
  end

  def self.ability
    <<-TEXT
      Choose a player. That player discards their hand
      and draws another card.
    TEXT
  end
end
