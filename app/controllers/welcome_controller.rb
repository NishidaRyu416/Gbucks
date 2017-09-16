class WelcomeController < ApplicationController
  def index
    @drinks=Drink.all
  end
end
