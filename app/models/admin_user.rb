class AdminUser < ActiveRecord::Base

  belongs_to :store
  has_many :categories,  through: :store
  # has_many :foods,  through: :store
  # has_many :items,  through: :foods

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable


  def display_name
    self.email
  end


end
