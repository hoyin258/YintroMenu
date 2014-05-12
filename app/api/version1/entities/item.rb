module Version1
  module Entities
    class Item < Grape::Entity

      expose :id, :menu_id, :name, :description, :spicy, :image
      expose :prices, using: Version1::Entities::Price
    end


  end
end