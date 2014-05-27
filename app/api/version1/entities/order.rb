module Version1
  module Entities
    class Order < Grape::Entity

      expose :order_num, :phone
      expose :items, using: Version1::Entities::OrderItem

      # expose :user , using: Version1::Entities::User
      expose :created_at
    end


  end
end