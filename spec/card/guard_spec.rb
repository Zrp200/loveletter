require 'rspec'
require 'card/guard'
require 'shared_examples/card'

describe 'Guard' do
  it_behaves_like 'a card object' do
    let(:card) { Guard.new }
  end
end
