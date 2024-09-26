class ShippingAddress < ApplicationRecord
  belongs_to :user
  belongs_to :order
  
  validates :street, :city, :state, :country, :zip_code, presence: true
end
