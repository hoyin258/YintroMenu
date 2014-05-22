class Store < ActiveRecord::Base

  has_one :admin_user

  has_many :categories
  has_many :orders
  has_many :foods, through: :categories
  has_many :items, through: :foods


  has_attached_file :picture,
                    :url => "/assets/images/:style/:id.:basename.:extension",
                    :path => ":rails_root/public/assets/images/:style/:id.:basename.:extension",
                    :styles => {:large => "1024x1024>", :thumb => "100x100>"},
                    :default_url => "/images/:style/missing.png"

  validates_attachment :picture,
                       :content_type => {:content_type => /\Aimage/},
                       :size => {:less_than => 2.megabytes}


  def display_name
    self.name
  end

  def large
    picture.url :large
  end

  def original
    picture.url
  end

  def thumb
    picture.url :thumb
  end
end
