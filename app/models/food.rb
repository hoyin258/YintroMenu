class Food < ActiveRecord::Base
  belongs_to :category
  has_many :items
  has_many :sizes, through: :items

end
