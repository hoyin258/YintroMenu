module Version1
  module Entities
    class Order < Grape::Entity

      expose :order_num, :phone
      expose :items, using: Version1::Entities::OrderItem

      expose :created_at
    end


  end
end