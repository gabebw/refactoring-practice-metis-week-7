class Dealer
  CARDS_PER_HAND = 5

  def initialize(deck)
    @deck = deck
  end

  def deal_hand
    @deck.take(CARDS_PER_HAND)
  end
end
