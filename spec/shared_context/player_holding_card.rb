shared_context 'player_holding_baron' do
  let(:player_holding_baron) do
    player = Player.new
    player.hand = Baron.new
    player
  end
end
