require "./random_ai"
require "./winning_ai"
require "./losing_ai"
require "./round"
require "./judge"
require "./scorer"

class RockPaperScissorsGame
  def initialize(ai_class)
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
    score = Scorer.new(@rounds).formatted_score
    print "#{score} Your move? (R/P/S, q to quit) > "
    gets.chomp
  end

  def play_round(move)
    round = Round.new(move, @ai_class.new(move))
    @rounds << round
    round.play
  end
end

RockPaperScissorsGame.new(LosingAi).play
