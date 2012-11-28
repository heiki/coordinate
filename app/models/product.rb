class Product < ActiveRecord::Base
  # attr_accessible :title, :body
  mount_uploader :productphoto, ProductphotoUploader
  belongs_to :user
  belongs_to :category
  
  has_many :photo_product_relations
  has_many :photos, :through => :photo_product_relations 
end
