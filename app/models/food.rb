class Food < ActiveRecord::Base

  belongs_to :category

  has_many :items
  has_many :sizes, through: :items

  accepts_nested_attributes_for :items, allow_destroy: true

  has_attached_file :picture,
                    :url  => "/assets/images/:style/:id.:basename.:extension",
                    :path => ":rails_root/public/assets/images/:style/:id.:basename.:extension",
                    :styles => { :large => "1024x1024>", :thumb => "100x100>" },
                    :default_url => "/images/missing.jpg"

  validates_attachment :picture,
                       :content_type => { :content_type => /\Aimage/ },
                       :size => { :less_than => 2.megabytes  }


  def large
    picture.url :large
  end

  def original
    picture.url
  end

  def thumb
    picture.url :thumb
  end

  scope :by_store_id,  lambda { |id|
    includes(category: :store, items: :size).where("stores.id" => id)
  }

  scope :by_category_id,  lambda { |id|
    includes(items: :size).where(category: id)
  }

end
