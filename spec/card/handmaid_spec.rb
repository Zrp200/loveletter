require 'rspec'
require 'card/handmaid'
require 'shared_examples/card'

describe 'Handmaid' do
  it_behaves_like 'a card object' do
    let(:card) { Handmaid.new }
  end
end
