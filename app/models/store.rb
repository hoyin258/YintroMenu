class Store < ActiveRecord::Base

  # belongs_to :admin_user

  has_many :categories
  has_many :foods,  through: :categories


  def display_name
    self.name
  end
end
