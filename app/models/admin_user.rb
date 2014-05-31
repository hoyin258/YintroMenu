class AdminUser < ActiveRecord::Base

  belongs_to :store
  has_many :categories, through: :store
  has_many :admin_gcms

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable


  def display_name
    self.email
  end


end
