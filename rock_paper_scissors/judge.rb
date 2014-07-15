class Judge
  def initialize(player_move, ai_move)
    @player_move = player_move
    @ai_move = ai_move
  end

  def judge
    puts "Player played #{@player_move}"
    puts "AI played #{@ai_move}"
    if true
      puts "AI beats Player"
    end
  end
end
