require "minitest"
require "minitest/autorun"
require "minitest/pride"
require_relative "../lib/guesser.rb"
## Ask about whether this is "breaking" the test
require_relative "../lib/card.rb"

class GuesserTest < Minitest::Test

  def test_guess_creation
    card_mine = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card_mine)
    assert_instance_of Guess, guess
    assert_equal "Saturn", guess.user_guess
  end

  def test_guess_card_method_prints
    card_m = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card_m)
    assert_equal guess.card, card_m.inspect
  end

  def test_guess_response_prints
    card_mine = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card_mine)
    assert_equal "Saturn", guess.response
  end

  def test_guess_evaluates_correct
    card_mine = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card_mine)
    refute guess.correct?
  end

  def test_feedback
  end

end
