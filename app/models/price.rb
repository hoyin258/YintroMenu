class Price < ActiveRecord::Base
  belongs_to :item
  belongs_to :unit
end
