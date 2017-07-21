require 'rails_helper'

describe "post a restaurant route", :type => :request do
restaurant = FactoryGirl.build(:restaurant)

  before do
    post '/restaurants', params: {
      :name => restaurant.name,
      :address => restaurant.address ,
      :phone_number => restaurant.phone_number
    }
  end

  it 'returns the restaurant name' do
    expect(JSON.parse(response.body)['name']).to eq restaurant.name
  end

  it 'returns the restaurant address' do
    expect(JSON.parse(response.body)['address']).to eq restaurant.address
  end

  it 'returns the restaurant phone_number' do
    expect(JSON.parse(response.body)['phone_number']).to eq restaurant.phone_number
  end


  it 'returns a created status' do
    expect(response).to have_http_status(200)
  end

end
