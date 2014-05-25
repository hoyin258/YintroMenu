module Version1
  module Entities

    class OrderItem < Grape::Entity

      expose :food, using: Version1::Entities::OrderFood

      expose :size, using: Version1::Entities::Size
      expose :price

    end


  end
end