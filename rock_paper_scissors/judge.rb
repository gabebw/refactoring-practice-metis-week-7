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

  def winner
    if ai_won?
      :ai
    else
      :player
    end
  end

  private

  def ai_won?
    @ai_move == WINNING_MOVE_AGAINST[@player_move]
  end
end
