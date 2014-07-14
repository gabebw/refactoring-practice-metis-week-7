require "./deck"
require "./dealer"
require "./player"

class Game
  def initialize(dealer, number_of_players)
    @dealer = dealer
    @number_of_players = number_of_players
    @players = {}
  end

  def play
    @players = @number_of_players.times.map do |player_number|
      Player.new(@dealer.deal_hand, player_number)
    end
  end

  def announce_results
    @players.each do |player|
      player.announce_results
    end
  end
end

dealer = Dealer.new(Deck.new)
game = Game.new(dealer, 4)
game.play
game.announce_results
