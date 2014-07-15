class Judge
  WINNING_MOVE = {
    "S" => "R",
    "R" => "P",
    "P" => "S",
  }

  def initialize(player_move, ai_move)
    @player_move = player_move
    @ai_move = ai_move
  end

  def winner
    if @ai_move == winning_move_against(@player_move)
      :ai
    else
      :player
    end
  end

  private

  def winning_move_against(move)
    WINNING_MOVE[move]
  end
end
