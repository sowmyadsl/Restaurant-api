class Restaurant < ApplicationRecord
  validates :name, :address, :phone_number, presence: true
  has_many :reviews
  scope :search, -> (name) { where("lower(name) like ?", "%#{name.downcase}%") }
end
