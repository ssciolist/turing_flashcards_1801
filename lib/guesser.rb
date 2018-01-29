#See Card.rb for details on Card class

class Guess
    attr_reader :user_guess,
                :a_card

  def initialize(user_guess, a_card)
    @a_card = a_card
    @user_guess = user_guess
  end

  def card
    @a_card
  end

  def response
    @user_guess
  end

  def correct?
    @user_guess == @a_card.answer
  end

  def feedback
    if @user_guess == @a_card.answer
      "Correct!"
    else
      "Incorrect."
    end
  end

end
