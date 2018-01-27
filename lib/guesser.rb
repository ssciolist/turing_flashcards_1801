#See Card.rb for details on Card class

class Guess
  def initialize(user_guess, card)
    @user_guess = user_guess
    @card = card
  end

  def user_guess
    @user_guess
  end

  def card
    @card.inspect
  end

  def response
    @user_guess
  end

  def correct?
    @user_guess == @card.answer
  end


end
