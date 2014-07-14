class Classifier
  def initialize(hand)
    @hand = hand.sort
  end

  def classify
    if straight? && flush?
      :straight_flush
    if flush?
      :flush
    elsif straight?
      :straight
    end
  end

  private

  def straight?
    (Deck::CARDS_PER_HAND-1).times.all? do |number|
      card = @hand[number]
      next_card = @hand[number+1]
      card + 1 == next_card
    end
  end

  def flush?
    @hand.all? {|card| card.suit == @hand.first.suit }
  end
end
