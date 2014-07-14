class Card
  PRETTY_NUMBERS = {
    1 => "Ace",
    11 => "Jack",
    12 => "Queen",
    13 => "King",
  }

  def initialize(suit, number)
    @suit = suit
    @number = number
  end

  def to_s
    "#{pretty_number} of #{@suit}"
  end

  private

  def pretty_number
    PRETTY_NUMBERS.fetch(@number, @number)
  end
end
