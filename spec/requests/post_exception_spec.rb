require 'rails_helper'

describe "post exception route", :type => :request do

  restaurant = FactoryGirl.build(:restaurant)

    before do
      post '/v1/restaurants', params: {
        :name => restaurant.name,
        :address => restaurant.address ,
        :phone_number => restaurant.phone_number
      }
    end

  before do
    post "/v1/restaurants", params: { address: restaurant.address, phone_number: restaurant.phone_number}
  end

  it 'returns error message' do
    expect(JSON.parse(response.body)['message']).to eq "Validation failed: Name can't be blank"
  end

  it 'returns unprocessable entity status' do
    expect(response).to have_http_status 422
  end
end
