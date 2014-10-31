require 'rspec'
require 'card/king'
require 'shared_examples/card'

describe 'King' do
  it_behaves_like 'a card object' do
    let(:card) { King.new }
  end
end
