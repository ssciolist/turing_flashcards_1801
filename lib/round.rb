require "pry"
class Round
  attr_reader :deck,
              :guesses,
              :my_user_guess

  def initialize (deck)
    @deck = deck
    @guesses = []
    @tracker = 0
  end

  def current_card
      @deck.cards_in_deck[@tracker]
  end

  def record_guess(my_user_guess)
    @my_user_guess = Guess.new(my_user_guess, current_card)
    @guesses << @my_user_guess
    @tracker += 1
    @my_user_guess
  end

  def number_correct
    @correct = 0
    @guesses.each do |guess|
      if @my_user_guess.correct?
        @correct +=1
      end
    end
    @correct
  end

  def percent_correct
    (number_correct / @deck.count).to_f
  end

end
