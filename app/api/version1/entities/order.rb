module Version1
  module Entities
    class Order < Grape::Entity

      expose :id, :order_num, :phone, :status
      expose :items, using: Version1::Entities::OrderItem
      expose :user , using: Version1::Entities::User
      expose :created_at
    end

  end
end