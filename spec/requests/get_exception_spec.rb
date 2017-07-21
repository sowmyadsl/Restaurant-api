require 'rails_helper'

describe 'get exception route', type: :request do

  before do
    restaurant = FactoryGirl.create(:restaurant)
    get "/v1/restaurants/7"
  end

  it 'returns error message' do
    expect(JSON.parse(response.body)['message']).to eq "Couldn't find Restaurant with 'id'=7"
  end
end
