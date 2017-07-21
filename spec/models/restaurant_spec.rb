require 'rails_helper'

describe V1::Restaurant, type: :model do
  it { should validate_presence_of :name }
  it { should validate_presence_of :address }
  it {should validate_presence_of :phone_number }
end
