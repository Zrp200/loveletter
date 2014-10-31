require 'rspec'
require 'card/princess'
require 'shared_examples/card'

describe 'Princess' do
  it_behaves_like 'a card object' do
    let(:card) { Princess.new }
  end
end
