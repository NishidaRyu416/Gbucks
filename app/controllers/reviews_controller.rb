class ReviewsController < ApplicationController

  def index
    @reviews=Review.all
  end

  def select
    @drinks=Drink.all
  end

  def new
    @review=Review.new
    @drink_id=params[:drink_id]
  end
  def show
    @review=Review.find(params[:id])
  end
  def create
    @review=Review.new(review_params)
    if @review.save
      redirect_to @review
    else
      render "new"
    end
  end

  private

  def review_params
    params.require(:review).permit(:body,:stars,:drink_id)
  end
end
