module Version1
  module Entities
    class OrderFood < Grape::Entity

      expose :menu_number, :name, :description, :spicy, :large
    end
  end
end