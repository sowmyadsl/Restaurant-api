require 'rails_helper'

describe "get all restaurant route", :type => :request do
  let!(:restaurants) { FactoryGirl.create_list(:restaurant, 20)}

  before { get '/v1/restaurants'}

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
