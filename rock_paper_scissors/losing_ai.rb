class LosingAi
  def play(player_move)
    @move = select_move(player_move)
  end

  attr_reader :move

  private

  def select_move(player_move)
    Judge::WINNING_MOVE_AGAINST.invert[player_move]
  end
end
