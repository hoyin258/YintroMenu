class Order < ActiveRecord::Base

  belongs_to :user
  belongs_to :store

  has_and_belongs_to_many :items, through: :items_orders

  scope :by_store_id, lambda { |id|
    joins(items: [:food, :size]).includes(items: [:food, :size]).where(store_id: id).order(id: :desc )
  }


end
