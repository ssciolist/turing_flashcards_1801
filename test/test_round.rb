require "pry"
require "minitest"
require "minitest/autorun"
require "minitest/pride"

require_relative "../lib/deck.rb"
require_relative "../lib/guesser.rb"
require_relative "../lib/card.rb"
require_relative "../lib/round.rb"

class RoundTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau")
    @card_2 = Card.new("Approximately how many miles are in one astronomical unit?", "93,000,000")
    @deck_mine = Deck.new([@card_1, @card_2])
    @round_mine = Round.new(@deck_mine)
  end

  def test_round_creation
    assert_instance_of Round, @round_mine
  end

  def test_round_deck_method
    assert_instance_of Deck, @round_mine.deck
    assert_equal @deck_mine, @round_mine.deck
  end

  def test_round_guesses
    assert_equal [], @round_mine.guesses
  end

  def test_round_current_card
    assert_equal @card_1, @round_mine.current_card
  end

  def test_round_record_guess
    assert_instance_of Guess, @round_mine.record_guess("Juneau")
    assert_equal 1, @round_mine.guesses.count
    assert_equal @card_2, @round_mine.current_card
  end

  def test_round_number_correct
    @round_mine.record_guess("Juneau")
    assert_equal 1, @round_mine.number_correct
  end

  def test_round_percent_correct
    @round_mine.record_guess("Juneau")
    @round_mine.record_guess("20")
    binding.pry
    assert_equal 50, @round_mine.percent_correct
  end

end
