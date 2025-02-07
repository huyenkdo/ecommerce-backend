class Product < ApplicationRecord
  has_many :order_items
  has_many :wishlists
  has_many :orders, through: :order_items
  has_many :users, through: :wishlists
  validates :name, :description, :price, presence: true
  validates :name, uniqueness: true
end
