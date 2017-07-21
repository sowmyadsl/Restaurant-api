class Restaurant < ApplicationRecord
  validates :name, :address, :phone_number, presence: true
end
