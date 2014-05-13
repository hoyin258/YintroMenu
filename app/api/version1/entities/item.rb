module Version1
  module Entities
    class Item < Grape::Entity

      expose :price
      expose :size, using: Version1::Entities::Size

    end
  end
end