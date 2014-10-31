require 'card'

class Priest < Card
  def initialize
    super(:priest, 2, ability)
  end

  def self.ability
    'Choose a Player and look at their hand.'
  end
end
