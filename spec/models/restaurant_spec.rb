require 'rails_helper'

describe Restaurant do
  it { should validate_presence_of :name }
  it { should validate_presence_of :address }
  it {should validate_presence_of :phone_number }
end
