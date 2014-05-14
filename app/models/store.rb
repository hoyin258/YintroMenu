class Store < ActiveRecord::Base

  has_one :admin_user

  has_many :categories
  has_many :foods,  through: :categories
  has_many :items,  through: :foods


  def display_name
    self.name
  end
end
