class Order < ActiveRecord::Base

  belongs_to :user
  belongs_to :store

  has_and_belongs_to_many :items, through: :items_orders

  before_create :create_order_number


  scope :by_store_id, lambda { |id|

    includes({items: [:food, :size]}, :user)
    .where(store_id: id)
    .order(id: :desc)
  }

  def create_order_number
    self.order_num = Order.where(:created_at => DateTime.now.beginning_of_month..DateTime.now.end_of_month).count
  end


  # Status = 0 未處理 > None
  # Status = 1 已接收 > Received
  # Status = 2 已完成 > Made
  def received_order
    self.status = 1
  end

  def made_order
    self.status = 2
  end

end
