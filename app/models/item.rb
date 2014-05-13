class Item < ActiveRecord::Base
  belongs_to :food
  belongs_to :size

  has_and_belongs_to_many :orders
end
