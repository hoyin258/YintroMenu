class Unit < ActiveRecord::Base
  has_many :prices
  # has_many :items, through :prices
end
