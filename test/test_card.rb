require "minitest"
require "minitest/autorun"
require "minitest/pride"
require "./lib/card.rb"

class CardTest < Minitest::Test

  def test_completecard_exists
    card = Card.new("Question?", "Answer")
    assert_instance_of Card, card
  end

  def test_card_question_exists
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_equal "What is the capital of Alaska?", card.question
  end

  def test_card_answer_exists
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_instance_of "Juneau", card.answer
  end
end
