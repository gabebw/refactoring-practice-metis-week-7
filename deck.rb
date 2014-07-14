require "./card"

class Deck
  SUITS = %w[Clubs Diamonds Hearts Spades]
  NUMBERS = (1..13)
  CARDS_PER_HAND = 5

  def initialize
    @cards = new_batch_of_cards.shuffle
  end

  def deal_hand
    @cards.shift(5)
  end

  private

  def new_batch_of_cards
    SUITS.flat_map do |suit|
      NUMBERS.map do |number|
        Card.new(suit, number)
      end
    end
  end
end

