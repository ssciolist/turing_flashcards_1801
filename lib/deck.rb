class Deck
  attr_reader :cards_in_deck

  def initialize (card)
    @cards_in_deck = card
  end

  def cards_in_deck
    @cards_in_deck
  end

  def count
    @cards_in_deck.length
  end

end
