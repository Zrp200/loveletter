class Card
  include Comparable

  attr_reader :name, :value, :ability

  def initialize(name, value, ability)
    @name = name
    @value = value
    @ability = ability
  end

  def <=>(other_card)
    value <=> other_card.value
  end
end
