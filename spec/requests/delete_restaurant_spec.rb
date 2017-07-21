require 'rails_helper'

describe "the delete restaurant route", :type => :request do
  restaurant = FactoryGirl.create(:restaurant)

  it 'returns a deleted status' do
    get "/v1/restaurants/#{restaurant.id}"
    delete "/v1/restaurants/#{restaurant.id}"
    expect(response).to have_http_status(200)
  end
end
