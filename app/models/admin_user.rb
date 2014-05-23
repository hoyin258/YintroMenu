class AdminUser < ActiveRecord::Base

  belongs_to :store
  has_many :categories, through: :store
  has_many :admin_gcms

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  API_KEY ="AIzaSyC7eY_FTyMXrEtXcLxgZ2iItFTb8vcwbdo"

  def display_name
    self.email
  end


  def send_push
    gcm = GCM.new(API_KEY)
    registration_ids= self.admin_gcms.collect { |obj| obj.registration }
    options = {data: {message: "New Order"}}
    gcm.send_notification(registration_ids, options)
  end

end
