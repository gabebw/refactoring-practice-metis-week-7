class WinningAi
  def initialize(player_move)
    @player_move = player_move
  end

  def play
    @move = Judge::WINNING_MOVE_AGAINST[@player_move]
  end

  attr_reader :move
end
