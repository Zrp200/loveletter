require 'deck'
require 'player'

class LoveLetter
  attr_accessor :status
  attr_reader :deck, :players, :log, :status

  def initialize(players: 2)
    @players = players.times.map { Player.new }
    @deck = Deck.new
    @log = []
    @status = :in_progress
    deal_cards
    exile_card
  end

  def winner
    if status == :finished
      if active_players.count == 1
        active_players.first
      else
        active_players.sort_by { |a| a.hand }.last
      end
    else
      :undetermined
    end
  end

  def active_players
    @players.select { |p| p.status == :active }
  end

  def update_status
    case
    when deck.remaining_cards == 0
      @status = :finished
    when active_players.count == 1
      @status = :finished
    end
  end

  def remove_player(player)
    player.status = :inactive
  end

  private

  def exile_card
    deck.exile_card
  end

  def deal_cards
    players.each do |player|
      player.draw_from(deck)
    end
  end
end
