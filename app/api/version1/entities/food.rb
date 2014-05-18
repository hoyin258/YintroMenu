module Version1
  module Entities
    class Food < Grape::Entity

      expose :menu_number, :name, :description, :spicy, :original

    end
  end
end