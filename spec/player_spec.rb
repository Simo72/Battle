require './lib/player'

describe Player do
  subject(:ian) { described_class.new("Ian") }
  subject(:sam) { described_class.new("Sam") }

  it 'should return its name' do
    expect(ian.name).to eq 'Ian'
  end

describe 'damage' do
  it 'reduces players HP' do
    expect {ian.damage }.to change { ian.hp }.by(-Player::ATTACK_POINTS)
  end
end
end
