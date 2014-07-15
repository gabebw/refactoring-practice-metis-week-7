class WinningAi
  def play(player_move)
    @move = Judge::WINNING_MOVE_AGAINST[player_move]
  end

  attr_reader :move
end
