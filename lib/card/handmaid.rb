require 'card'

class Handmaid < Card
  def initialize
    super(:handmaid, 4, ability)
  end

  def self.ability
    <<-TEXT
      Ignore all effects from other players until
      your next turn.
    TEXT
  end
end
