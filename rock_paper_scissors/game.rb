require "./ai"
require "./round"
require "./judge"

class Game
  def initialize(ai_class = Ai)
    @rounds = []
    @ai_class = ai_class
  end

  def play
    loop do
      move = ask_for_move
      if move == "q"
        break
      else
        play_round(move)
      end
    end
  end

  private

  def ask_for_move
    print "[Won #{total_score}/#{total_rounds}] Your move? (R/P/S, q to quit) > "
    gets.chomp
  end

  def play_round(move)
    round = Round.new(move, @ai_class.new)
    @rounds << round
    round.play
  end

  def total_score
    @rounds.map(&:score).inject(0, :+)
  end

  def total_rounds
    @rounds.size
  end
end

Game.new(Ai).play
