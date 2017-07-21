require 'rails_helper'

describe "post a restaurant route", :type => :request do

  before do
    post '/restaurants', params: { :name => 'test_name', :address => 'test_address' , :phone_number => 'test_phone_number'}
  end

  it 'returns the name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the restaurant address' do
    expect(JSON.parse(response.body)['address']).to eq('test_address')
  end

  it 'returns the restaurant phone_number' do
    expect(JSON.parse(response.body)['phone_number']).to eq('test_phone_number')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(201)
  end
end
