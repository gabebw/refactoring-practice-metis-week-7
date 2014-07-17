require "./random_ai"
require "./winning_ai"
require "./losing_ai"
require "./ai_chooser"
require "./round"
require "./judge"
require "./scorer"

class RockPaperScissorsGame
  CHARACTER_TO_QUIT = "q"
  MOVES = %w[R P S]
  POSSIBLE_INPUT = MOVES + [CHARACTER_TO_QUIT]

  def initialize
    @rounds = []
  end

  def play
    @ai_class = AiChooser.new.ask_user_to_choose
    play_game
  end

  private

  def play_game
    loop do
      move = ask_for_move
      if move == CHARACTER_TO_QUIT
        break
      else
        play_round(move)
      end
    end
  end

  def ask_for_move
    while ! MOVES.include?(ask_for_input)
      puts "!!! Invalid choice! Try again."
    end
  end

  def ask_for_input
    print prompt
    gets.chomp
  end

  def prompt
    score = Scorer.new(@rounds).formatted_score
    valid_input = "#{MOVES.join("/")}, #{CHARACTER_TO_QUIT} to quit"
    "#{score} Your move? (#{valid_input}) > "
  end

  def play_round(move)
    round = Round.new(move, @ai_class.new(move))
    @rounds << round
    round.play
  end
end

RockPaperScissorsGame.new.play
