shared_examples_for 'a card object' do
  it 'should have a name' do
    expect(card.respond_to? :name).to eq true
  end

  it 'should have a value' do
    expect(card.respond_to? :value).to eq true
  end

  it 'should have an ability' do
    expect(card.respond_to? :ability).to eq true
  end
end
