class Ai
  MOVES = %w[R P S]

  def play(player_move)
    @move = select_move(player_move)
  end

  attr_reader :move

  private

  def select_move(player_move)
    MOVES.sample
  end
end
