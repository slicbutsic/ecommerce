class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews
  has_many :shipping_addresses
  has_one :cart
  has_many :orders
  has_one :wishlist

  validates :email, presence: true, uniqueness: true
end
