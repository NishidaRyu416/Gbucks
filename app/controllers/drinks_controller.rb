class DrinksController < ApplicationController

  def index
    @drinks=Drink.all
  end

  def show
    @drink=Drink.find(params[:id])
  end

  def new
    @drink=Drink.new
  end

  def create
    @drink= Drink.new(drink_params)
    if @drink.save
        response = firebase.push("images", { :name => params[:image], :priority => params[:image] })
      @drink.update(image:response.body)
      redirect_to @drink
    else
      render 'new'
    end
  end

  private

  def drink_params
    params.require(:drink).permit(:name,:explanation,:price,:image)
  end
end
