require "./deck"
require "./dealer"

class Game
  def initialize(dealer, number_of_players)
    @dealer = dealer
    @number_of_players = number_of_players
    @players = {}
  end

  def play
    @number_of_players.times do |player_number|
      @players[player_number] = @dealer.deal_hand
    end
  end

  def announce_results
    @players.each_with_index do |player, player_number|
      announce_player_results(player_number)
      puts
    end
  end

  private

  def announce_player_results(number)
    message = "Player #{number}"
    puts message
    puts "-" * message.size
    puts @players[number]
  end
end

dealer = Dealer.new(Deck.new)
game = Game.new(dealer, 4)
game.play
game.announce_results
