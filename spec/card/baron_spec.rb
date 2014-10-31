require 'rspec'
require 'card/baron'
require 'shared_examples/card'

describe 'Baron' do
  it_behaves_like 'a card object' do
    let(:card) { Baron.new }
  end
end
