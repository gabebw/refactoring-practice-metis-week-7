require "./random_ai"
require "./winning_ai"
require "./losing_ai"
require "./round"
require "./judge"
require "./scorer"

class RockPaperScissorsGame
  CHARACTER_TO_QUIT = "q"
  MOVES = %w[R P S]
  POSSIBLE_INPUT = MOVES + [CHARACTER_TO_QUIT]
  POSSIBLE_AIS = {
    winning: WinningAi,
    losing: LosingAi,
    random: RandomAi,
  }

  def initialize
    @rounds = []
  end

  def play
    @ai_class = ask_for_ai
    game_loop
  end

  private

  def game_loop
    loop do
      move = ask_for_move
      if move == CHARACTER_TO_QUIT
        break
      else
        play_round(move)
      end
    end
  end

  def ask_for_ai
    print "Which AI would you like to use? (#{POSSIBLE_AIS.keys.join(", ")}) > "
    POSSIBLE_AIS.fetch(gets.chomp.to_sym) do |key|
      puts "'#{key}' is not a valid AI type!"
      exit 1
    end
  end

  def ask_for_move
    score = Scorer.new(@rounds).formatted_score
    valid_input = "#{MOVES.join("/")}, #{CHARACTER_TO_QUIT} to quit"
    print "#{score} Your move? (#{valid_input}) > "
    gets.chomp
  end

  def play_round(move)
    round = Round.new(move, @ai_class.new(move))
    @rounds << round
    round.play
  end
end

RockPaperScissorsGame.new.play
