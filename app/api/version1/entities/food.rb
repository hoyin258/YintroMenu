module Version1
  module Entities
    class Food < Grape::Entity

      expose :menu_number, :name, :description, :spicy, :original
      expose :items, using: Version1::Entities::Item
    end
  end
end