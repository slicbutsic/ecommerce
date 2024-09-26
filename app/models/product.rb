class Product < ApplicationRecord
  belongs_to :category

  has_many :reviews
  has_many :cart_items
  has_many :order_items
  has_many :wishlist_items

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :stock_quantity, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
