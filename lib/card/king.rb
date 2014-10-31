require 'card'

class King < Card
  def initialize
    super(:king, 6, ability)
  end

  def self.ability
    'Exchange hands with a player of your choice.'
  end
end
