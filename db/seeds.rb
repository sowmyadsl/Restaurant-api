# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Restaurant.destroy_all


  200.times do |index|
  new_restaurant = Restaurant.create!(name: Faker::Company.name,
                            address: Faker::Address.street_address,
                            phone_number: Faker::Number.number(10)
                            )

end

p "Created #{Restaurant.count} restaurants"
