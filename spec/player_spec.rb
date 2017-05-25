require './lib/player'

describe Player do
  subject(:player) { described_class.new("Ian") }

  it 'should return its name' do
    expect(player.name).to eq 'Ian'
  end
end
