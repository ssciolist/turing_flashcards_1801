require "minitest"
require "minitest/autorun"
require "minitest/pride"
require "./lib/deck.rb"
require "./lib/card.rb"

class DeckTest < Minitest::Test
  def test_deck_creation
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
    deck = Deck.new(card_1, card_2, card_3)
    assert_instance_of Deck, deck
  end

  def test_deck_replay
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
    deck = Deck.new(card_1, card_2, card_3)
    assert_equal [card_1, card_2, card_3], deck.cards
  end

  def test_deck_count
    card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars")
    card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west")
    deck = Deck.new(card_1, card_2, card_3)
    assert_equal 3, deck.count
  end

end
