class WelcomeController < ApplicationController
  def index
    @drinks=Drink.all
    @reviews=Review.all
  end
end
