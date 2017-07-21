class ReviewsController < ApplicationController

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reviews = @restaurant.reviews.all
    json_response(@reviews)
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.new
    json_response(@review)
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.new(review_params)
    json_response(@review)
  end

  def update
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.find(params[:id])
    json_response(@review)
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    json_response(@review)
  end


  private
    def review_params
      params.require(:review).permit(:author, :content)
    end
end
