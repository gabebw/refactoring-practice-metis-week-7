class Round
  def initialize(player_move, ai)
    @player_move = player_move
    @ai = ai
  end

  def play
    @ai.play
    announce
  end

  def announce
    puts "AI played #{ai_move}"
    announce_winner
  end

  def score
    if judge.player_won?
      1
    else
      0
    end
  end

  private

  def announce_winner
    if judge.ai_won?
      puts "AI beats Player"
    elsif judge.player_won?
      puts "Player beats AI"
    end
  end

  def judge
    @judge ||= Judge.new(player_move, ai_move)
  end

  def player_move
    @player_move
  end

  def ai_move
    @ai.move
  end
end
