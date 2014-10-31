require 'loveletter'
require 'card'

describe LoveLetter do
  let(:game) { LoveLetter.new }

  it 'should have players' do
    expect(game.respond_to? :players).to eq true
  end

  it 'should have a deck' do
    expect(game.respond_to? :deck).to eq true
  end

  it 'should have a log of cards played' do
    expect(game.respond_to? :log).to eq true
  end

  it 'should have a status' do
    expect(game.respond_to? :status).to eq true
  end

  context 'game initialization' do
    it 'should deal a card to every player from the deck' do
      game.players.each do |player|
        expect(player.hand).to be_kind_of(Card)
      end
    end

    it 'should set one card aside in the deck' do
      expect(game.deck.remaining_cards).to eq 13
    end
  end

  describe 'ending the game' do
    it 'ends the game when there is only one active player' do
      game.remove_player(game.players.first)
      game.update_status
      expect(game.status).to eq :finished
    end

    it 'ends the game when there are no cards left in the deck' do
      game.deck.remaining_cards.times { game.deck.draw }
      game.update_status
      expect(game.status).to eq :finished
    end
  end

  describe 'determining the winner' do
    it 'has no winner as the game is still in progress' do
      expect(game.winner).to eq :undetermined
    end

    context 'finished game' do
      let(:game) { LoveLetter.new(players: 3) }
      let(:losers) { game.players.first(2) }
      let(:winner) { game.players.last }

      it 'has a default winner with only one player in the game' do
        losers.each do |loser|
          game.remove_player(loser)
        end
        game.update_status
        expect(game.winner).to eq winner
      end

      context 'highest card wins' do
        class FakeDeck
          def initialize(card); @deck = card; end;
          def draw; @deck.pop; end;
        end

        let(:losing_deck) { FakeDeck.new([Card.new(:guard, 1, :none), Card.new(:guard, 1, :none)]) }
        let(:winning_deck) { FakeDeck.new([Card.new(:baron, 3, :none)]) }

        it 'chooses the player with the highest value card' do
          losers.each do |loser|
            loser.play_card
            loser.draw_from(losing_deck)
          end
          winner.play_card
          winner.draw_from(winning_deck)
          game.deck.remaining_cards.times { game.deck.draw }
          game.update_status
          expect(game.winner).to eq winner
        end
      end
    end
  end
end
