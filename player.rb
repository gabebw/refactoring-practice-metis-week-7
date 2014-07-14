class Player
  def initialize(hand, name)
    @hand = hand
    @name = name
  end

  def announce_results
    message = "Player #{@name}"
    puts message
    puts "-" * message.size
    puts @hand
    puts
  end
end

