class RestaurantSerializer < ActiveModel::Serializer
  has_many :reviews
  attributes :id, :name, :address, :phone_number
end
