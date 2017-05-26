require './lib/game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  subject(:finished_game) { described_class.new(dead_player, player2) }
  let(:player1) { double :player1, hp: 100 }
  let(:player2) { double :player2, hp: 100 }
  let(:dead_player) { double :player, hp: 0 }

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
      game.attack
    end

  end

  describe '#switch_turn' do
    it 'switch players turn' do
      expect(game.switch_turn).to eq [player2, player1]
    end
  end

  describe '#loser' do
    it ' returns the player on less than 0hp' do
      expect(finished_game.loser).to eq dead_player
    end
  end

  describe '#game_over' do
    it 'returns false if no player has 0HP' do
      expect(game.game_over?).to eq false
    end

    it 'returns true if a player has 0HP' do
      expect(finished_game.game_over?).to eq true
    end
  end

end
