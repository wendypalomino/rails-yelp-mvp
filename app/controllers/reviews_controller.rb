class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    binding.pry
    # @review.restaurant =
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
