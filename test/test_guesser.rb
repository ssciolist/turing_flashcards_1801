require "pry"
require "minitest"
require "minitest/autorun"
require "minitest/pride"
require_relative "../lib/guesser.rb"
require_relative "../lib/card.rb"

class GuesserTest < Minitest::Test

  def test_guess_creation
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)
    assert_instance_of Guess, guess
  end

  def test_guess_user_guess
    card = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card)
    assert_equal "Saturn", guess.user_guess
  end

  def test_guess_card_method_inspects
    card_mine = Card.new("Which planet is closest to the sun?", "Mercury")
    guess = Guess.new("Saturn", card_mine)
    assert_equal card_mine, guess.card
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
    card_mine = Card.new("Which planet is closest to the sun?", "Mercury")
    guess_mine = Guess.new("Saturn", card_mine)
    assert_equal "Incorrect.", guess_mine.feedback
  end

end
