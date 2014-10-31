require 'rspec'
require 'card/priest'
require 'shared_examples/card'

describe 'Priest' do
  it_behaves_like 'a card object' do
    let(:card) { Priest.new }
  end
end
