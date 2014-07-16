class RandomAi
  def initialize(player_move)
  end

  def play
    @move = RockPaperScissorsGame::MOVES.sample
  end

  attr_reader :move
end
