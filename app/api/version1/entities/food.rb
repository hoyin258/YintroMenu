module Version1
  module Entities
    class Food < Grape::Entity

      expose :menu_number, :name, :description ,:spicy
      expose :picture, using: Version1::Entities::Picture, if: {type: :full}

    end
  end
end