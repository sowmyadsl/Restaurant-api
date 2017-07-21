class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    json_response(@restaurants)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    json_response(@restaurant)
  end

  def create
    @restaurant = Restaurant.create!(restaurant_params)
    json_response(@restaurant, :created)
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    if @restaurant.update(restaurant_params)
      render status: 200, json: {
     message: "Your restaurant has been updated successfully."
     }
   end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end

  def restaurant_params
    params.permit(:name, :address, :phone_number)
  end
end
