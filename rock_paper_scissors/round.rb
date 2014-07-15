class Round
  def initialize(player_move, ai)
    @player_move = player_move
    @ai = ai
  end

  def play
    judge = Judge.new(player_move, ai_move)
    judge.judge
  end

  private

  def player_move
    @player_move
  end

  def ai_move
    @ai.play(@player_move)
  end
end
