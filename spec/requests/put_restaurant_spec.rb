require 'rails_helper'

describe "update restaurant route", :type => :request do
  restaurant = FactoryGirl.create(:restaurant)

  it 'tests the put route' do
    put "/v1/restaurants/#{restaurant.id}", params: { :name => 'Piazza Italia'}
    get "/v1/restaurants/#{restaurant.id}"
    expect(JSON.parse(response.body)["name"]).to eq('Piazza Italia')
  end
end
