class RandomAi
  MOVES = %w[R P S]

  def initialize(player_move)
  end

  def play
    @move = MOVES.sample
  end

  attr_reader :move
end
