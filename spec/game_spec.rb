require './lib/game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }

  describe '#initialize accepts 2 players' do
    it 'accepts player 1' do
      expect(game.player1).to eq player1
    end

    it 'accepts player 2' do
      expect(game.player2).to eq player2
    end

  end

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:damage)
      game.attack(player2)
    end
  end


end
