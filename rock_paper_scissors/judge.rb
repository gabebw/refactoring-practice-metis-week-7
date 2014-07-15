class Judge
  WINNING_MOVE_AGAINST = {
    "S" => "R",
    "R" => "P",
    "P" => "S",
  }

  WINNER_IN_CASE_OF_TIE = :player

  def initialize(player_move, ai_move)
    @player_move = player_move
    @ai_move = ai_move
  end

  def winner
    if tied?
      WINNER_IN_CASE_OF_TIE
    elsif ai_won?
      :ai
    else
      :player
    end
  end

  private

  def ai_won?
    @ai_move == WINNING_MOVE_AGAINST[@player_move]
  end

  def tied?
    @ai_move == @player_move
  end
end
