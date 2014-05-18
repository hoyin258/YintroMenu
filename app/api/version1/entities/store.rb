module Version1
  module Entities
    class Store < Grape::Entity

      expose :name, :phone, :address, :latitude, :longitude, :open_hours, :description, :original
    end
  end
end