require 'spec_helper'

describe 'Guard' do
  let(:card) { Guard.new }

  it_behaves_like 'a card object'

  describe 'special ability' do
    include_context 'player_holding_baron'

    context 'guessing correctly' do
      it 'should remove a player from the round' do
        expect(player_holding_baron.status).to eq :active
        card.use_ability_on(player_holding_baron, Baron)
        expect(player_holding_baron.status).to eq :inactive
      end
    end

    context 'guessing incorrectly' do
      it 'should not remove a player from the round' do
        expect(player_holding_baron.status).to eq :active
        card.use_ability_on(player_holding_baron, Guard)
        expect(player_holding_baron.status).to eq :active
      end
    end
  end
end
