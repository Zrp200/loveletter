require 'card'

class Guard < Card
  def initialize
    super(:guard, 1, ability)
  end

  def self.ability
    <<-TEXT
      Choose a Player. Name a non-guard card.
      If that play has the named guard, they are out of the round
    TEXT
  end
end
