require 'rspec'
require 'card/countess'
require 'shared_examples/card'

describe 'Countess' do
  it_behaves_like 'a card object' do
    let(:card) { Countess.new }
  end
end
