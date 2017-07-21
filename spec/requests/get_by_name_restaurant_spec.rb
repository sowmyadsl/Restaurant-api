require 'rails_helper'

describe "the get by name restaurant route", :type => :request do

  it 'returns a restaurant name' do
    restaurant = FactoryGirl.create(:restaurant)
    get "/v1/restaurants?name=#{restaurant.name}"
    expect(JSON.parse(response.body)[0]['name']).to eq(restaurant.name)
  end
end
