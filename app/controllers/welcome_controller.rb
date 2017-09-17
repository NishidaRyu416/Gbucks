class WelcomeController < ApplicationController
  def index
    @drinks=Drink.all
    @reviews=Review.all
  end
  def roulette
    @check=choose
  end
  private
  def choose(weight = 100)
    rand <= weight/300.0
  end
end
