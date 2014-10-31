require 'card'

class Princess < Card
  def initialize
    super(:Princess, 8, ability)
  end

  def self.ability
    <<-TEXT
      If at any time you discard the Princess,
      you are out of the current round.
    TEXT
  end
end
