class AdminUser < ActiveRecord::Base

  has_one :store ,  :through => :store_id

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable


  def display_name
    self.email
  end

end
