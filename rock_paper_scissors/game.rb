require "./ai"
require "./round"
require "./judge"

class Game
  def initialize(ai)
    @rounds = []
    @ai = ai
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
    print "Your move? (R/P/S, q to quit) > "
    gets.chomp
  end

  def play_round(move)
    round = Round.new(move, @ai)
    @rounds << round
    round.play
  end
end

Game.new(Ai.new).play
