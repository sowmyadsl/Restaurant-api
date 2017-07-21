require 'rails_helper'

describe 'get a random restaurant route', :type => :request do
  before { Restaurant.destroy_all }

  let!(:restaurants) { FactoryGirl.create_list(:restaurant, 20)}

  before { get '/v1/random'}

  it "returns one restaurant" do
    expect(JSON.parse(response.body).size).to eq(1)
  end
end
