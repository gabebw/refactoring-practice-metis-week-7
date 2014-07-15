class Round
  def initialize(player_move, ai)
    @player_move = player_move
    @ai = ai
  end

  def play
    @ai.play(@player_move)
    announce
  end

  def announce
    puts "AI played #{ai_move}"
    announce_winner
  end

  def score
    if winner == :ai
      0
    elsif winner == :player
      1
    end
  end

  private

  def announce_winner
    if winner == :ai
      puts "AI beats Player"
    else
      puts "Player beats AI"
    end
  end

  def winner
    judge = Judge.new(player_move, ai_move)
    judge.winner
  end

  def player_move
    @player_move
  end

  def ai_move
    @ai.move
  end
end
