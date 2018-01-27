class Deck
  attr_reader :cards

  def initialize (*card)
    #require 'pry';binding.pry
    @cards = card
  end

  def cards
      @cards
  end

  def count
    @cards.length
  end

end
