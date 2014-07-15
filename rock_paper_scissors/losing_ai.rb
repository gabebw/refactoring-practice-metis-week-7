class LosingAi
  def initialize(player_move)
    @player_move = player_move
  end

  def play
    @move = select_move
  end

  attr_reader :move

  private

  def select_move
    Judge::WINNING_MOVE_AGAINST.invert[@player_move]
  end
end
