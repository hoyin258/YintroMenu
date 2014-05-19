module Version1
  module Entities
    class User < Grape::Entity
      expose :facebook_id
      expose :facebook_name
    end
  end
end