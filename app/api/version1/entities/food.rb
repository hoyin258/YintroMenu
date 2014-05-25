module Version1
  module Entities
    class Food < Grape::Entity

      expose :menu_number, :name, :description, :spicy, :large
      expose :items, using: Version1::Entities::Item
      expose :category_id
    end
  end
end