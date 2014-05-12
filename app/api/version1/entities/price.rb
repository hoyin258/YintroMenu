module Version1
  module Entities
    class Price < Grape::Entity

      expose :price
      expose :unit, using: Version1::Entities::Unit

    end
  end
end