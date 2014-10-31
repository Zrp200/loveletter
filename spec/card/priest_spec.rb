require 'spec_helper'

describe 'Priest' do
  let(:card) { Priest.new }

  it_behaves_like 'a card object'

  describe 'special ability' do
    include_context 'player_holding_baron'

    it 'reveals the correct card' do
      expect(card.use_ability_on(player_holding_baron)).to be_kind_of(Baron)
    end
  end
end
