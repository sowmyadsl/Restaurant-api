FactoryGirl.define do
  factory :restaurant do
    name(Faker::Company.name)
    address(Faker::Address.street_address)
    phone_number(Faker::Number.number(10))
  end

end
