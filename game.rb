require "./deck"

class Game
  def initialize(number_of_players)
    @deck = Deck.new
    @number_of_players = number_of_players
    @players = {}
  end

  def play
    @number_of_players.times do |player_number|
      @players[player_number] = @deck.deal_hand
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

game = Game.new(4)
game.play
game.announce_results
