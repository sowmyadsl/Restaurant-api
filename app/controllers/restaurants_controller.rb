class RestaurantsController < ApplicationController

  def index
    @restaurants = {"Piazza Italia": "1129 NW Johnson St Portland OR 97209" "11-5" "5034355390"}
    json_response(@restaurants)
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end
end
