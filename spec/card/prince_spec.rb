require 'rspec'
require 'card/prince'
require 'shared_examples/card'

describe 'Prince' do
  it_behaves_like 'a card object' do
    let(:card) { Prince.new }
  end
end
