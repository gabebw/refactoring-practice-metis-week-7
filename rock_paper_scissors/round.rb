class Round
  def initialize(player_move, ai)
    @player_move = player_move
    @ai = ai
  end

  def play
    puts "Player played #{player_move}"
    puts "AI played #{ai_move}"
    if winner == :ai
      puts "AI beats Player"
    else
      puts "Player beats AI"
    end
  end

  private

  def winner
    judge = Judge.new(player_move, ai_move)
    judge.winner
  end

  def player_move
    @player_move
  end

  def ai_move
    @ai_move ||= @ai.play(@player_move)
  end
end
