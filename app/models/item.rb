class Item < ActiveRecord::Base
  belongs_to :category
  has_many :prices
  has_many :units, through: :prices
  has_and_belongs_to_many :orders
end
