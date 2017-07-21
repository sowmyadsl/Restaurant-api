class Restaurant < ApplicationRecord
  validates :name, :address, :phone_number, presence: true
  
  scope :search, -> (name) { where("lower(name) like ?", "%#{name.downcase}%") }
end
