class Store < ActiveRecord::Base
  has_many :categories
  has_many :foods,  through: :categories
end
