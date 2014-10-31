require 'card'

class Countess < Card
  def initialize; super(:countess, 7, ability); end

  def self.ability
    <<-TEXT
      If at any time you have the Countess with
      the King or the Prince, you must discard the
      Countess.
    TEXT
  end
end
