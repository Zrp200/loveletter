require 'card'

class Baron < Card
  def initialize
    super(:baron, 3, ability)
  end

  def self.ability
    <<-TEXT
      Choose a Player and secretly compare cards with them.
      The player with the lowest number on their card is
      out of the round.
    TEXT
  end
end
