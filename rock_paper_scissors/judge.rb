class Judge
  WINNING_MOVE_AGAINST = {
    "S" => "R",
    "R" => "P",
    "P" => "S",
  }

  def initialize(player_move, ai_move)
    @player_move = player_move
    @ai_move = ai_move
  end

  def ai_won?
    @ai_move == WINNING_MOVE_AGAINST[@player_move]
  end

  def player_won?
    ! ai_won?
  end

  private

  def tied?
    @ai_move == @player_move
  end
end
