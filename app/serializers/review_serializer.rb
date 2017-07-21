class ReviewSerializer < ActiveModel::Serializer
  belongs_to :restaurant
  attributes :author, :content

end
